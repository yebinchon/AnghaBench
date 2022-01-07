; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v5.c_s5p_mfc_cmd_host2risc_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v5.c_s5p_mfc_cmd_host2risc_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_cmd_args = type { i32* }

@jiffies = common dso_local global i64 0, align 8
@MFC_BW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Timeout while waiting for hardware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@S5P_FIMV_HOST2RISC_CMD = common dso_local global i32 0, align 4
@S5P_FIMV_H2R_CMD_EMPTY = common dso_local global i32 0, align 4
@S5P_FIMV_HOST2RISC_ARG1 = common dso_local global i32 0, align 4
@S5P_FIMV_HOST2RISC_ARG2 = common dso_local global i32 0, align 4
@S5P_FIMV_HOST2RISC_ARG3 = common dso_local global i32 0, align 4
@S5P_FIMV_HOST2RISC_ARG4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*, i32, %struct.s5p_mfc_cmd_args*)* @s5p_mfc_cmd_host2risc_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_cmd_host2risc_v5(%struct.s5p_mfc_dev* %0, i32 %1, %struct.s5p_mfc_cmd_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s5p_mfc_cmd_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.s5p_mfc_cmd_args* %2, %struct.s5p_mfc_cmd_args** %7, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* @MFC_BW_TIMEOUT, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  %13 = add i64 %10, %12
  store i64 %13, i64* %9, align 8
  br label %14

14:                                               ; preds = %27, %3
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @time_after(i64 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = call i32 @mfc_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %14
  %24 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %25 = load i32, i32* @S5P_FIMV_HOST2RISC_CMD, align 4
  %26 = call i32 @mfc_read(%struct.s5p_mfc_dev* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @S5P_FIMV_H2R_CMD_EMPTY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %14, label %31

31:                                               ; preds = %27
  %32 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %33 = load %struct.s5p_mfc_cmd_args*, %struct.s5p_mfc_cmd_args** %7, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @S5P_FIMV_HOST2RISC_ARG1, align 4
  %39 = call i32 @mfc_write(%struct.s5p_mfc_dev* %32, i32 %37, i32 %38)
  %40 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %41 = load %struct.s5p_mfc_cmd_args*, %struct.s5p_mfc_cmd_args** %7, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @S5P_FIMV_HOST2RISC_ARG2, align 4
  %47 = call i32 @mfc_write(%struct.s5p_mfc_dev* %40, i32 %45, i32 %46)
  %48 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %49 = load %struct.s5p_mfc_cmd_args*, %struct.s5p_mfc_cmd_args** %7, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @S5P_FIMV_HOST2RISC_ARG3, align 4
  %55 = call i32 @mfc_write(%struct.s5p_mfc_dev* %48, i32 %53, i32 %54)
  %56 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %57 = load %struct.s5p_mfc_cmd_args*, %struct.s5p_mfc_cmd_args** %7, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @S5P_FIMV_HOST2RISC_ARG4, align 4
  %63 = call i32 @mfc_write(%struct.s5p_mfc_dev* %56, i32 %61, i32 %62)
  %64 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @S5P_FIMV_HOST2RISC_CMD, align 4
  %67 = call i32 @mfc_write(%struct.s5p_mfc_dev* %64, i32 %65, i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %31, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
