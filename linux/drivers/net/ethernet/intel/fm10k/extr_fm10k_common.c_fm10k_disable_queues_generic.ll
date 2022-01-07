; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_disable_queues_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_disable_queues_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FM10K_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@FM10K_RXQCTL_ENABLE = common dso_local global i32 0, align 4
@FM10K_QUEUE_DISABLE_TIMEOUT = common dso_local global i64 0, align 8
@FM10K_ERR_REQUESTS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_disable_queues_generic(%struct.fm10k_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %10 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %13 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @FM10K_REMOVED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @FM10K_TXDCTL(i64 %25)
  %27 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @FM10K_TXDCTL(i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @FM10K_TXDCTL_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %28, i32 %30, i32 %34)
  %36 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @FM10K_RXQCTL(i64 %37)
  %39 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @FM10K_RXQCTL(i64 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FM10K_RXQCTL_ENABLE, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %40, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %23
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %19

51:                                               ; preds = %19
  %52 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %53 = call i32 @fm10k_write_flush(%struct.fm10k_hw* %52)
  %54 = call i32 @udelay(i32 1)
  store i64 0, i64* %7, align 8
  %55 = load i64, i64* @FM10K_QUEUE_DISABLE_TIMEOUT, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %101, %90, %51
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %104

64:                                               ; preds = %59
  %65 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @FM10K_TXDCTL(i64 %66)
  %68 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %65, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = xor i32 %69, -1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @FM10K_TXDCTL_ENABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %72, %64
  %78 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @FM10K_RXQCTL(i64 %79)
  %81 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %78, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = xor i32 %82, -1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @FM10K_RXQCTL_ENABLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85, %77
  %91 = load i64, i64* %7, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %7, align 8
  br label %56

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @udelay(i32 1)
  br label %101

101:                                              ; preds = %99, %94
  br label %56

102:                                              ; preds = %56
  %103 = load i32, i32* @FM10K_ERR_REQUESTS_PENDING, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %63, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @FM10K_REMOVED(i32) #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_TXDCTL(i64) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_RXQCTL(i64) #1

declare dso_local i32 @fm10k_write_flush(%struct.fm10k_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
