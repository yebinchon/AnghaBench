; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_otp_select_filemode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_otp_select_filemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_file_info = type { i32, %struct.mtd_info* }
%struct.mtd_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MTD_FILE_MODE_OTP_FACTORY = common dso_local global i32 0, align 4
@MTD_FILE_MODE_OTP_USER = common dso_local global i32 0, align 4
@MTD_FILE_MODE_NORMAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_file_info*, i32)* @otp_select_filemode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otp_select_filemode(%struct.mtd_file_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_file_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  store %struct.mtd_file_info* %0, %struct.mtd_file_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mtd_file_info*, %struct.mtd_file_info** %4, align 8
  %9 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %8, i32 0, i32 1
  %10 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  store %struct.mtd_info* %10, %struct.mtd_info** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %42 [
    i32 130, label %12
    i32 128, label %25
    i32 129, label %38
  ]

12:                                               ; preds = %2
  %13 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %14 = call i32 @mtd_read_fact_prot_reg(%struct.mtd_info* %13, i32 -1, i32 0, i64* %7, i32* null)
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %12
  %22 = load i32, i32* @MTD_FILE_MODE_OTP_FACTORY, align 4
  %23 = load %struct.mtd_file_info*, %struct.mtd_file_info** %4, align 8
  %24 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %27 = call i32 @mtd_read_user_prot_reg(%struct.mtd_info* %26, i32 -1, i32 0, i64* %7, i32* null)
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %25
  %35 = load i32, i32* @MTD_FILE_MODE_OTP_USER, align 4
  %36 = load %struct.mtd_file_info*, %struct.mtd_file_info** %4, align 8
  %37 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %45

38:                                               ; preds = %2
  %39 = load i32, i32* @MTD_FILE_MODE_NORMAL, align 4
  %40 = load %struct.mtd_file_info*, %struct.mtd_file_info** %4, align 8
  %41 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %38, %34, %21
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %31, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mtd_read_fact_prot_reg(%struct.mtd_info*, i32, i32, i64*, i32*) #1

declare dso_local i32 @mtd_read_user_prot_reg(%struct.mtd_info*, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
