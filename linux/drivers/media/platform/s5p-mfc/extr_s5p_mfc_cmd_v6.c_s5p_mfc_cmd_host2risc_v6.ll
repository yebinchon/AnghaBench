; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v6.c_s5p_mfc_cmd_host2risc_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v6.c_s5p_mfc_cmd_host2risc_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_cmd_args = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Issue the command: %d\0A\00", align 1
@S5P_FIMV_RISC2HOST_CMD_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_HOST2RISC_CMD_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_HOST2RISC_INT_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*, i32, %struct.s5p_mfc_cmd_args*)* @s5p_mfc_cmd_host2risc_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_cmd_host2risc_v6(%struct.s5p_mfc_dev* %0, i32 %1, %struct.s5p_mfc_cmd_args* %2) #0 {
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5p_mfc_cmd_args*, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.s5p_mfc_cmd_args* %2, %struct.s5p_mfc_cmd_args** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %10 = load i32, i32* @S5P_FIMV_RISC2HOST_CMD_V6, align 4
  %11 = call i32 @mfc_write(%struct.s5p_mfc_dev* %9, i32 0, i32 %10)
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @S5P_FIMV_HOST2RISC_CMD_V6, align 4
  %15 = call i32 @mfc_write(%struct.s5p_mfc_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %17 = load i32, i32* @S5P_FIMV_HOST2RISC_INT_V6, align 4
  %18 = call i32 @mfc_write(%struct.s5p_mfc_dev* %16, i32 1, i32 %17)
  ret i32 0
}

declare dso_local i32 @mfc_debug(i32, i8*, i32) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
