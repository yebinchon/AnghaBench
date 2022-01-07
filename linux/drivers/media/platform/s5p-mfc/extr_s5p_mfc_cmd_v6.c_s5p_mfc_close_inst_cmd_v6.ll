; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v6.c_s5p_mfc_close_inst_cmd_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v6.c_s5p_mfc_close_inst_cmd_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_cmd_args = type { i32 }

@MFCINST_FREE = common dso_local global i64 0, align 8
@S5P_FIMV_INSTANCE_ID_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_H2R_CMD_CLOSE_INSTANCE_V6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_close_inst_cmd_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_close_inst_cmd_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_cmd_args, align 4
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %6 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %6, i32 0, i32 3
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  store %struct.s5p_mfc_dev* %8, %struct.s5p_mfc_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MFCINST_FREE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @S5P_FIMV_INSTANCE_ID_V6, align 4
  %25 = call i32 @mfc_write(%struct.s5p_mfc_dev* %20, i32 %23, i32 %24)
  %26 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %27 = load i32, i32* @S5P_FIMV_H2R_CMD_CLOSE_INSTANCE_V6, align 4
  %28 = call i32 @s5p_mfc_cmd_host2risc_v6(%struct.s5p_mfc_dev* %26, i32 %27, %struct.s5p_mfc_cmd_args* %4)
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %19
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @s5p_mfc_cmd_host2risc_v6(%struct.s5p_mfc_dev*, i32, %struct.s5p_mfc_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
