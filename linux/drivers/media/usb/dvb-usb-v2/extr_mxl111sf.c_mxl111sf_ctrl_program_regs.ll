; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf.c_mxl111sf_ctrl_program_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf.c_mxl111sf_ctrl_program_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }
%struct.mxl111sf_reg_ctrl_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed on reg #%d (0x%02x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_ctrl_program_regs(%struct.mxl111sf_state* %0, %struct.mxl111sf_reg_ctrl_info* %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca %struct.mxl111sf_reg_ctrl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store %struct.mxl111sf_reg_ctrl_info* %1, %struct.mxl111sf_reg_ctrl_info** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %63, %2
  %8 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %8, i64 %10
  %12 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %14, i64 %16
  %18 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %13, %19
  %21 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %21, i64 %23
  %25 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %20, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %7
  %30 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %31 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %31, i64 %33
  %35 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %37, i64 %39
  %41 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %43, i64 %45
  %47 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mxl111sf_write_reg_mask(%struct.mxl111sf_state* %30, i32 %36, i32 %42, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @mxl_fail(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %29
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %55, i64 %57
  %59 = getelementptr inbounds %struct.mxl111sf_reg_ctrl_info, %struct.mxl111sf_reg_ctrl_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %60)
  br label %66

62:                                               ; preds = %29
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %7

66:                                               ; preds = %53, %7
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @mxl111sf_write_reg_mask(%struct.mxl111sf_state*, i32, i32, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
