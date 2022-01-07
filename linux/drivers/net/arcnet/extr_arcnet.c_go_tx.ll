; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_go_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_go_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.arcnet_local = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*)* }

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"go_tx: status=%Xh, intmask=%Xh, next_tx=%d, cur_tx=%d\0A\00", align 1
@D_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"go_tx\00", align 1
@TXcmd = common dso_local global i32 0, align 4
@TXFREEflag = common dso_local global i32 0, align 4
@EXCNAKflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @go_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go_tx(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.arcnet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %5)
  store %struct.arcnet_local* %6, %struct.arcnet_local** %4, align 8
  %7 = load i32, i32* @D_DURING, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %10 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 %12(%struct.net_device* %13)
  %15 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %16 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %19 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %22 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @arc_printk(i32 %7, %struct.net_device* %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %26 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %31 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %1
  store i32 0, i32* %2, align 4
  br label %86

35:                                               ; preds = %29
  %36 = load i32, i32* @D_TX, align 4
  %37 = call i64 @BUGLVL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %42 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @arcnet_dump_packet(%struct.net_device* %40, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %47 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %50 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %52 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %51, i32 0, i32 1
  store i32 -1, i32* %52, align 4
  %53 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %54 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32, i32* @TXcmd, align 4
  %59 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %60 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 3
  %63 = or i32 %58, %62
  %64 = call i32 %56(%struct.net_device* %57, i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %71 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %74 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  %75 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %76 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %78 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @TXFREEflag, align 4
  %80 = load i32, i32* @EXCNAKflag, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %83 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %45, %34
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @BUGLVL(i32) #1

declare dso_local i32 @arcnet_dump_packet(%struct.net_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
