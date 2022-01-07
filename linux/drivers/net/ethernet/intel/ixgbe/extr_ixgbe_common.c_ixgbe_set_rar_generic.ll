; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_set_rar_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_set_rar_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i64)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_rar_generic(%struct.ixgbe_hw* %0, i64 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @hw_dbg(%struct.ixgbe_hw* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %26, i32* %6, align 4
  br label %96

27:                                               ; preds = %5
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ixgbe_hw.0*, i64, i64)*, i32 (%struct.ixgbe_hw.0*, i64, i64)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.0*
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 %32(%struct.ixgbe_hw.0* %34, i64 %35, i64 %36)
  %38 = load i64*, i64** %9, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = shl i64 %43, 8
  %45 = or i64 %40, %44
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  %49 = shl i64 %48, 16
  %50 = or i64 %45, %49
  %51 = load i64*, i64** %9, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 3
  %53 = load i64, i64* %52, align 8
  %54 = shl i64 %53, 24
  %55 = or i64 %50, %54
  store i64 %55, i64* %12, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @IXGBE_RAH(i64 %57)
  %59 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %56, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i32, i32* @IXGBE_RAH_AV, align 4
  %61 = or i32 65535, %60
  %62 = xor i32 %61, -1
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %13, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %13, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 5
  %71 = load i64, i64* %70, align 8
  %72 = shl i64 %71, 8
  %73 = or i64 %68, %72
  %74 = load i64, i64* %13, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %27
  %79 = load i32, i32* @IXGBE_RAH_AV, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %13, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %78, %27
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @IXGBE_RAL(i64 %85)
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %84, i32 %86, i64 %87)
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %90 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %89)
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @IXGBE_RAH(i64 %92)
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %91, i32 %93, i64 %94)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %83, %22
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RAH(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_RAL(i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
