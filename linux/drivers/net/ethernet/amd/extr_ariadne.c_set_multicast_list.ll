; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.Am79C960 = type { i32, i8* }

@CSR0 = common dso_local global i8* null, align 8
@STOP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CSR15 = common dso_local global i8* null, align 8
@PROM = common dso_local global i32 0, align 4
@CSR8 = common dso_local global i8* null, align 8
@INEA = common dso_local global i32 0, align 4
@STRT = common dso_local global i32 0, align 4
@IDON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.Am79C960*, align 8
  %4 = alloca [4 x i16], align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.Am79C960*
  store %struct.Am79C960* %10, %struct.Am79C960** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load i8*, i8** @CSR0, align 8
  %19 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %20 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %19, i32 0, i32 1
  store volatile i8* %18, i8** %20, align 8
  %21 = load i32, i32* @STOP, align 4
  %22 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %23 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %22, i32 0, i32 0
  store volatile i32 %21, i32* %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @ariadne_init_ring(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_PROMISC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %15
  %33 = load i8*, i8** @CSR15, align 8
  %34 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %35 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %34, i32 0, i32 1
  store volatile i8* %33, i8** %35, align 8
  %36 = load i32, i32* @PROM, align 4
  %37 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %38 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %37, i32 0, i32 0
  store volatile i32 %36, i32* %38, align 8
  br label %75

39:                                               ; preds = %15
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @netdev_mc_count(%struct.net_device* %40)
  store i32 %41, i32* %5, align 4
  %42 = getelementptr inbounds [4 x i16], [4 x i16]* %4, i64 0, i64 0
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 -1
  %47 = call i32 @memset(i16* %42, i32 %46, i32 8)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %66, %39
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i8*, i8** @CSR8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %52, i64 %55
  %57 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %58 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %57, i32 0, i32 1
  store volatile i8* %56, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i16], [4 x i16]* %4, i64 0, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = call i32 @swapw(i16 signext %62)
  %64 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %65 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %64, i32 0, i32 0
  store volatile i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load i8*, i8** @CSR15, align 8
  %71 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %72 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %71, i32 0, i32 1
  store volatile i8* %70, i8** %72, align 8
  %73 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %74 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %73, i32 0, i32 0
  store volatile i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %69, %32
  %76 = load i8*, i8** @CSR0, align 8
  %77 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %78 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %77, i32 0, i32 1
  store volatile i8* %76, i8** %78, align 8
  %79 = load i32, i32* @INEA, align 4
  %80 = load i32, i32* @STRT, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IDON, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %85 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %84, i32 0, i32 0
  store volatile i32 %83, i32* %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 @netif_wake_queue(%struct.net_device* %86)
  br label %88

88:                                               ; preds = %75, %14
  ret void
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ariadne_init_ring(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @swapw(i16 signext) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
