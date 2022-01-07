; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_get_arcbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_get_arcbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@D_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"get_arcbuf: overlap (%d)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"get_arcbuf: BUG: no buffers are available??\0A\00", align 1
@D_DURING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"get_arcbuf: got #%d; buffer queue is now: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"#%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @get_arcbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_arcbuf(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arcnet_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %6)
  store %struct.arcnet_local* %7, %struct.arcnet_local** %3, align 8
  store i32 -1, i32* %4, align 4
  %8 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %9 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %8, i32 0, i32 3
  %10 = call i32 @atomic_dec_and_test(%struct.TYPE_3__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @D_NORMAL, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %16 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %13, %struct.net_device* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %22 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 5
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %27 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 5
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %32 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %35 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @D_NORMAL, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %39, %struct.net_device* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %57

42:                                               ; preds = %30
  %43 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %44 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %47 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  %53 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %54 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = srem i32 %55, 5
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %42, %38
  br label %58

58:                                               ; preds = %57, %12
  %59 = load i32, i32* @D_DURING, align 4
  %60 = call i64 @BUGLVL(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %58
  %63 = load i32, i32* @D_DURING, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %63, %struct.net_device* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %68 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %86, %62
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %73 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load i32, i32* @D_DURING, align 4
  %78 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %79 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @arc_cont(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  %89 = srem i32 %88, 5
  store i32 %89, i32* %5, align 4
  br label %70

90:                                               ; preds = %70
  %91 = load i32, i32* @D_DURING, align 4
  %92 = call i32 (i32, i8*, ...) @arc_cont(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %58
  %94 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %95 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %94, i32 0, i32 3
  %96 = call i32 @atomic_inc(%struct.TYPE_3__* %95)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_dec_and_test(%struct.TYPE_3__*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, ...) #1

declare dso_local i64 @BUGLVL(i32) #1

declare dso_local i32 @arc_cont(i32, i8*, ...) #1

declare dso_local i32 @atomic_inc(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
