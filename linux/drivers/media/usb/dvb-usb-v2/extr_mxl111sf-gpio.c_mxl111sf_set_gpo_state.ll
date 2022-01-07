; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_set_gpo_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_set_gpo_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%d, %d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*, i32, i32)* @mxl111sf_set_gpo_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_set_gpo_state(%struct.mxl111sf_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxl111sf_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @mxl_debug_adv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %19 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %18, i32 25, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @mxl_fail(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %87

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 %31, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %37, i32 25, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @mxl_fail(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %87

44:                                               ; preds = %24
  br label %86

45:                                               ; preds = %14, %3
  %46 = load i32, i32* %5, align 4
  %47 = icmp sle i32 %46, 10
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 7
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %56 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %55, i32 48, i32* %8)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @mxl_fail(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %87

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 3
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %69, 3
  %71 = shl i32 %68, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %74, i32 48, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @mxl_fail(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %61
  br label %87

81:                                               ; preds = %61
  br label %85

82:                                               ; preds = %45
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %81
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %80, %60, %43, %23
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @mxl_debug_adv(i8*, i32, i32) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
