; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { %struct.TYPE_6__, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"user ID: 0x%x, Controller ID: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Hardware features not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"TX Checksum offload supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"RX Checksum offload supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sxgbe_priv_data*)* @sxgbe_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_hw_init(%struct.sxgbe_priv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sxgbe_priv_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_7__* @kmalloc(i32 16, i32 %5)
  %7 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %8 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %7, i32 0, i32 1
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %8, align 8
  %9 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %10 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %18 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @sxgbe_get_ops(%struct.TYPE_7__* %19)
  %21 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %22 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %29 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %27(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 16711680
  %34 = ashr i32 %33, 16
  %35 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %36 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 255
  %41 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %42 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %46 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %51 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %57 = call i32 @sxgbe_get_hw_features(%struct.sxgbe_priv_data* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %16
  %60 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %16
  %62 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %63 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %61
  %70 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %71 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %69
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_7__* @kmalloc(i32, i32) #1

declare dso_local i32 @sxgbe_get_ops(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @sxgbe_get_hw_features(%struct.sxgbe_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
