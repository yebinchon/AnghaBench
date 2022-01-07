; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.init_if_mode_op = type { i32, i32 }

@INIT_IF_MODE_OP_CMD_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.init_if_mode_op*, i32)* @qed_init_cmd_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_cmd_mode(%struct.qed_hwfn* %0, %struct.init_if_mode_op* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.init_if_mode_op*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.init_if_mode_op* %1, %struct.init_if_mode_op** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.init_if_mode_op*, %struct.init_if_mode_op** %6, align 8
  %10 = getelementptr inbounds %struct.init_if_mode_op, %struct.init_if_mode_op* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @qed_init_cmd_mode_match(%struct.qed_hwfn* %13, i32* %8, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.init_if_mode_op*, %struct.init_if_mode_op** %6, align 8
  %20 = getelementptr inbounds %struct.init_if_mode_op, %struct.init_if_mode_op* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load i32, i32* @INIT_IF_MODE_OP_CMD_OFFSET, align 4
  %24 = call i32 @GET_FIELD(i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @qed_init_cmd_mode_match(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
