; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-csi2.c_adv748x_csi2_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-csi2.c_adv748x_csi2_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32, i32 }
%struct.adv748x_csi2 = type { %struct.adv748x_state* }
%struct.adv748x_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.adv748x_csi2*, i32 }
%struct.TYPE_3__ = type { %struct.adv748x_csi2*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Registered %s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TXA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TXB\00", align 1
@ADV748X_AFE_SOURCE = common dso_local global i32 0, align 4
@ADV748X_HDMI_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv748x_csi2_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_csi2_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv748x_csi2*, align 8
  %5 = alloca %struct.adv748x_state*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.adv748x_csi2* @adv748x_sd_to_csi2(%struct.v4l2_subdev* %7)
  store %struct.adv748x_csi2* %8, %struct.adv748x_csi2** %4, align 8
  %9 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %10 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %9, i32 0, i32 0
  %11 = load %struct.adv748x_state*, %struct.adv748x_state** %10, align 8
  store %struct.adv748x_state* %11, %struct.adv748x_state** %5, align 8
  %12 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %13 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %14 = call i64 @is_txa(%struct.adv748x_csi2* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @adv_dbg(%struct.adv748x_state* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20)
  %22 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %23 = call i64 @is_afe_enabled(%struct.adv748x_state* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %1
  %26 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %31 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* @ADV748X_AFE_SOURCE, align 4
  %34 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %35 = call i32 @is_txb(%struct.adv748x_csi2* %34)
  %36 = call i32 @adv748x_csi2_register_link(%struct.adv748x_csi2* %26, i32 %29, i32* %32, i32 %33, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %25
  %42 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %43 = call i32 @is_txb(%struct.adv748x_csi2* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %47 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %48 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.adv748x_csi2* %46, %struct.adv748x_csi2** %49, align 8
  br label %50

50:                                               ; preds = %45, %41
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %53 = call i32 @is_txb(%struct.adv748x_csi2* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %57 = call i32 @is_hdmi_enabled(%struct.adv748x_state* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %51
  store i32 0, i32* %2, align 4
  br label %79

60:                                               ; preds = %55
  %61 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %66 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* @ADV748X_HDMI_SOURCE, align 4
  %69 = call i32 @adv748x_csi2_register_link(%struct.adv748x_csi2* %61, i32 %64, i32* %67, i32 %68, i32 1)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %60
  %75 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %4, align 8
  %76 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %77 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store %struct.adv748x_csi2* %75, %struct.adv748x_csi2** %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %72, %59, %39
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.adv748x_csi2* @adv748x_sd_to_csi2(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv_dbg(%struct.adv748x_state*, i8*, i8*, i32) #1

declare dso_local i64 @is_txa(%struct.adv748x_csi2*) #1

declare dso_local i64 @is_afe_enabled(%struct.adv748x_state*) #1

declare dso_local i32 @adv748x_csi2_register_link(%struct.adv748x_csi2*, i32, i32*, i32, i32) #1

declare dso_local i32 @is_txb(%struct.adv748x_csi2*) #1

declare dso_local i32 @is_hdmi_enabled(%struct.adv748x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
