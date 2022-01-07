; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_rst_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_rst_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ahb = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"wifi_core_cold\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to get core cold rst ctrl: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"wifi_radio_cold\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to get radio cold rst ctrl: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"wifi_radio_warm\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to get radio warm rst ctrl: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"wifi_radio_srif\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to get radio srif rst ctrl: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"wifi_cpu_init\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"failed to get cpu init rst ctrl: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_ahb_rst_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_rst_ctrl_init(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ahb*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k* %6)
  store %struct.ath10k_ahb* %7, %struct.ath10k_ahb** %4, align 8
  %8 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i8* @devm_reset_control_get_exclusive(%struct.device* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %24 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %23, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  %27 = call i32 @ath10k_err(%struct.ath10k* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %29 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %2, align 4
  br label %117

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i8* @devm_reset_control_get_exclusive(%struct.device* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %36 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %38 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %45 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  %48 = call i32 @ath10k_err(%struct.ath10k* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %50 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %2, align 4
  br label %117

53:                                               ; preds = %32
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i8* @devm_reset_control_get_exclusive(%struct.device* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %57 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %59 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %53
  %64 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %65 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %66 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  %69 = call i32 @ath10k_err(%struct.ath10k* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %71 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @PTR_ERR(i8* %72)
  store i32 %73, i32* %2, align 4
  br label %117

74:                                               ; preds = %53
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i8* @devm_reset_control_get_exclusive(%struct.device* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %77 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %78 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %80 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %86 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %87 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  %90 = call i32 @ath10k_err(%struct.ath10k* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %92 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %2, align 4
  br label %117

95:                                               ; preds = %74
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = call i8* @devm_reset_control_get_exclusive(%struct.device* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %98 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %99 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %101 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @IS_ERR(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %95
  %106 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %107 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %108 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @PTR_ERR(i8* %109)
  %111 = call i32 @ath10k_err(%struct.ath10k* %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %110)
  %112 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %113 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %2, align 4
  br label %117

116:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %105, %84, %63, %42, %21
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
