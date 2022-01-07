; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_find_unused_bar_noblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_find_unused_bar_noblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp6000_pcie = type { i32, %struct.nfp_bar* }
%struct.nfp_bar = type { i32, i32 }

@.str = private unnamed_addr constant [91 x i8] c"No suitable BAR found for request tgt:0x%x act:0x%x tok:0x%x off:0x%llx size:%zd width:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp6000_pcie*, i32, i32, i32, i32, i64, i32)* @find_unused_bar_noblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_unused_bar_noblock(%struct.nfp6000_pcie* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp6000_pcie*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfp_bar*, align 8
  %19 = alloca i32, align 4
  store %struct.nfp6000_pcie* %0, %struct.nfp6000_pcie** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %20

20:                                               ; preds = %61, %7
  %21 = load i32, i32* %16, align 4
  %22 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %9, align 8
  %23 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %20
  %27 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %9, align 8
  %28 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %27, i32 0, i32 1
  %29 = load %struct.nfp_bar*, %struct.nfp_bar** %28, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %29, i64 %31
  store %struct.nfp_bar* %32, %struct.nfp_bar** %18, align 8
  %33 = load %struct.nfp_bar*, %struct.nfp_bar** %18, align 8
  %34 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %61

38:                                               ; preds = %26
  %39 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %9, align 8
  %40 = load %struct.nfp_bar*, %struct.nfp_bar** %18, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @compute_bar(%struct.nfp6000_pcie* %39, %struct.nfp_bar* %40, i32* null, i32* null, i32 %41, i32 %42, i32 %43, i32 %44, i64 %45, i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %61

51:                                               ; preds = %38
  %52 = load %struct.nfp_bar*, %struct.nfp_bar** %18, align 8
  %53 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %52, i32 0, i32 0
  %54 = call i32 @atomic_read(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %8, align 4
  br label %83

58:                                               ; preds = %51
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %58, %50, %37
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i64, i64* %14, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @WARN(i32 %68, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i64 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %83

80:                                               ; preds = %64
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %77, %56
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @compute_bar(%struct.nfp6000_pcie*, %struct.nfp_bar*, i32*, i32*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
