; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_get_fact_prot_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_get_fact_prot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { {}* }
%struct.otp_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_get_fact_prot_info(%struct.mtd_info* %0, i64 %1, i64* %2, %struct.otp_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.otp_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.otp_info* %3, %struct.otp_info** %9, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)**
  %13 = load i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)** %12, align 8
  %14 = icmp ne i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %32

22:                                               ; preds = %18
  %23 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)**
  %26 = load i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)** %25, align 8
  %27 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load %struct.otp_info*, %struct.otp_info** %9, align 8
  %31 = call i32 %26(%struct.mtd_info* %27, i64 %28, i64* %29, %struct.otp_info* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %22, %21, %15
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
