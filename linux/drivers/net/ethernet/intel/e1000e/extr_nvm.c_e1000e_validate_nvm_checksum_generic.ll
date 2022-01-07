; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_nvm.c_e1000e_validate_nvm_checksum_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_nvm.c_e1000e_validate_nvm_checksum_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"NVM Checksum Invalid\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_validate_nvm_checksum_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %11 = add nsw i64 %10, 1
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @e1000_read_nvm(%struct.e1000_hw* %14, i64 %15, i32 1, i64* %7)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %38

22:                                               ; preds = %13
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %8

29:                                               ; preds = %8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @NVM_SUM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* @E1000_ERR_NVM, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %2, align 8
  br label %38

37:                                               ; preds = %29
  store i64 0, i64* %2, align 8
  br label %38

38:                                               ; preds = %37, %33, %19
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i64, i32, i64*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
