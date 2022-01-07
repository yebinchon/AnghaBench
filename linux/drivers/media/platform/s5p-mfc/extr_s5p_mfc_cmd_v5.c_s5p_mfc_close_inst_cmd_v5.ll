; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v5.c_s5p_mfc_close_inst_cmd_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_cmd_v5.c_s5p_mfc_close_inst_cmd_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32 }
%struct.s5p_mfc_cmd_args = type { i32* }

@MFCINST_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Instance already returned\0A\00", align 1
@MFCINST_ERROR = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Returning instance number %d\0A\00", align 1
@S5P_FIMV_H2R_CMD_CLOSE_INSTANCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to return an instance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_close_inst_cmd_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_close_inst_cmd_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_cmd_args, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 3
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %4, align 8
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MFCINST_FREE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = call i32 @mfc_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** @MFCINST_ERROR, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = call i32 @memset(%struct.s5p_mfc_cmd_args* %5, i32 0, i32 8)
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.s5p_mfc_cmd_args, %struct.s5p_mfc_cmd_args* %5, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %41 = load i32, i32* @S5P_FIMV_H2R_CMD_CLOSE_INSTANCE, align 4
  %42 = call i32 @s5p_mfc_cmd_host2risc_v5(%struct.s5p_mfc_dev* %40, i32 %41, %struct.s5p_mfc_cmd_args* %5)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %23
  %46 = call i32 @mfc_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** @MFCINST_ERROR, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %45, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.s5p_mfc_cmd_args*, i32, i32) #1

declare dso_local i32 @s5p_mfc_cmd_host2risc_v5(%struct.s5p_mfc_dev*, i32, %struct.s5p_mfc_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
