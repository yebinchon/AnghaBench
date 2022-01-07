; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_cfi_check_err_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_cfi_check_err_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32, %struct.cfi_private* }
%struct.cfi_private = type { i32, i32 }
%struct.flchip = type { i32 }

@CFI_SR_ESB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"%s erase operation failed, status %lx\0A\00", align 1
@CFI_SR_PSB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%s program operation failed, status %lx\0A\00", align 1
@CFI_SR_WBASB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"%s buffer program command aborted, status %lx\0A\00", align 1
@CFI_SR_SLSB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%s sector write protected, status %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, %struct.flchip*, i64)* @cfi_check_err_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_check_err_status(%struct.map_info* %0, %struct.flchip* %1, i64 %2) #0 {
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca %struct.flchip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cfi_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store %struct.flchip* %1, %struct.flchip** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.map_info*, %struct.map_info** %4, align 8
  %11 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 1
  %12 = load %struct.cfi_private*, %struct.cfi_private** %11, align 8
  store %struct.cfi_private* %12, %struct.cfi_private** %7, align 8
  %13 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %14 = call i32 @cfi_use_status_reg(%struct.cfi_private* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %85

17:                                               ; preds = %3
  %18 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %19 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.flchip*, %struct.flchip** %5, align 8
  %22 = getelementptr inbounds %struct.flchip, %struct.flchip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.map_info*, %struct.map_info** %4, align 8
  %25 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %26 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %27 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cfi_send_gen_cmd(i32 112, i32 %20, i32 %23, %struct.map_info* %24, %struct.cfi_private* %25, i32 %28, i32* null)
  %30 = load %struct.map_info*, %struct.map_info** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @map_read(%struct.map_info* %30, i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.map_info*, %struct.map_info** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @CMD(i32 58)
  %36 = call i64 @map_word_bitsset(%struct.map_info* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %17
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @MERGESTATUS(i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @CFI_SR_ESB, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.map_info*, %struct.map_info** %4, align 8
  %47 = getelementptr inbounds %struct.map_info, %struct.map_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @CFI_SR_PSB, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.map_info*, %struct.map_info** %4, align 8
  %58 = getelementptr inbounds %struct.map_info, %struct.map_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @CFI_SR_WBASB, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.map_info*, %struct.map_info** %4, align 8
  %69 = getelementptr inbounds %struct.map_info, %struct.map_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @CFI_SR_SLSB, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.map_info*, %struct.map_info** %4, align 8
  %80 = getelementptr inbounds %struct.map_info, %struct.map_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %16, %84, %17
  ret void
}

declare dso_local i32 @cfi_use_status_reg(%struct.cfi_private*) #1

declare dso_local i32 @cfi_send_gen_cmd(i32, i32, i32, %struct.map_info*, %struct.cfi_private*, i32, i32*) #1

declare dso_local i32 @map_read(%struct.map_info*, i64) #1

declare dso_local i64 @map_word_bitsset(%struct.map_info*, i32, i32) #1

declare dso_local i32 @CMD(i32) #1

declare dso_local i64 @MERGESTATUS(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
