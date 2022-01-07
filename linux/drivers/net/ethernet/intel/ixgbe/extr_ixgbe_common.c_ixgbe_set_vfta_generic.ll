; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_set_vfta_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_set_vfta_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@IXGBE_VT_CTL = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_VT_ENABLE = common dso_local global i32 0, align 4
@IXGBE_VLVF_VIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_vfta_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 4095
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 63
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %5
  %23 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %23, i32* %6, align 4
  br label %154

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = sdiv i32 %25, 32
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, 32
  %29 = call i32 @BIT(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @IXGBE_VFTA(i32 %31)
  %33 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %30, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %14, align 4
  %38 = xor i32 %37, -1
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %14, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %38, %36 ], [ %40, %39 ]
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %49 = load i32, i32* @IXGBE_VT_CTL, align 4
  %50 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %48, i32 %49)
  %51 = load i32, i32* @IXGBE_VT_CTL_VT_ENABLE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  br label %144

55:                                               ; preds = %41
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @ixgbe_find_vlvf_slot(%struct.ixgbe_hw* %56, i32 %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %144

66:                                               ; preds = %62
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %6, align 4
  br label %154

68:                                               ; preds = %55
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %70 = load i32, i32* %16, align 4
  %71 = mul nsw i32 %70, 2
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %72, 32
  %74 = add nsw i32 %71, %73
  %75 = call i32 @IXGBE_VLVFB(i32 %74)
  %76 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %69, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %9, align 4
  %78 = srem i32 %77, 32
  %79 = call i32 @BIT(i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %127

85:                                               ; preds = %68
  %86 = load i32, i32* %9, align 4
  %87 = srem i32 %86, 32
  %88 = call i32 @BIT(i32 %87)
  %89 = load i32, i32* %15, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %126, label %93

93:                                               ; preds = %85
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %95 = load i32, i32* %16, align 4
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %9, align 4
  %99 = sdiv i32 %98, 32
  %100 = sub nsw i32 %97, %99
  %101 = call i32 @IXGBE_VLVFB(i32 %100)
  %102 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %94, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @IXGBE_VFTA(i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %108, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %104
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @IXGBE_VLVF(i32 %115)
  %117 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %114, i32 %116, i32 0)
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %119 = load i32, i32* %16, align 4
  %120 = mul nsw i32 %119, 2
  %121 = load i32, i32* %9, align 4
  %122 = sdiv i32 %121, 32
  %123 = add nsw i32 %120, %122
  %124 = call i32 @IXGBE_VLVFB(i32 %123)
  %125 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %118, i32 %124, i32 0)
  store i32 0, i32* %6, align 4
  br label %154

126:                                              ; preds = %93, %85
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %126, %84
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %129 = load i32, i32* %16, align 4
  %130 = mul nsw i32 %129, 2
  %131 = load i32, i32* %9, align 4
  %132 = sdiv i32 %131, 32
  %133 = add nsw i32 %130, %132
  %134 = call i32 @IXGBE_VLVFB(i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %128, i32 %134, i32 %135)
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @IXGBE_VLVF(i32 %138)
  %140 = load i32, i32* @IXGBE_VLVF_VIEN, align 4
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %137, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %127, %65, %54
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @IXGBE_VFTA(i32 %149)
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %148, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %147, %144
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %153, %113, %66, %22
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTA(i32) #1

declare dso_local i32 @ixgbe_find_vlvf_slot(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VLVFB(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VLVF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
