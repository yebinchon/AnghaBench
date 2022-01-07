; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_compute_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_compute_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp6000_pcie = type { i32 }
%struct.nfp_bar = type { i32 }

@NFP_CPP_NUM_TARGETS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_LengthSelect_64BIT = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_LengthSelect_32BIT = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_LengthSelect_0BYTE = common dso_local global i32 0, align 4
@NFP_CPP_ACTION_RW = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_MapType_FIXED = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_MapType_BULK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp6000_pcie*, %struct.nfp_bar*, i64*, i64*, i32, i32, i32, i64, i64, i32)* @compute_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_bar(%struct.nfp6000_pcie* %0, %struct.nfp_bar* %1, i64* %2, i64* %3, i32 %4, i32 %5, i32 %6, i64 %7, i64 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp6000_pcie*, align 8
  %13 = alloca %struct.nfp_bar*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.nfp6000_pcie* %0, %struct.nfp6000_pcie** %12, align 8
  store %struct.nfp_bar* %1, %struct.nfp_bar** %13, align 8
  store i64* %2, i64** %14, align 8
  store i64* %3, i64** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* @NFP_CPP_NUM_TARGETS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %10
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %155

32:                                               ; preds = %10
  %33 = load i32, i32* %21, align 4
  switch i32 %33, label %43 [
    i32 8, label %34
    i32 4, label %37
    i32 0, label %40
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_LengthSelect_64BIT, align 4
  %36 = call i64 @NFP_PCIE_BAR_PCIE2CPP_LengthSelect(i32 %35)
  store i64 %36, i64* %23, align 8
  br label %46

37:                                               ; preds = %32
  %38 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_LengthSelect_32BIT, align 4
  %39 = call i64 @NFP_PCIE_BAR_PCIE2CPP_LengthSelect(i32 %38)
  store i64 %39, i64* %23, align 8
  br label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_LengthSelect_0BYTE, align 4
  %42 = call i64 @NFP_PCIE_BAR_PCIE2CPP_LengthSelect(i32 %41)
  store i64 %42, i64* %23, align 8
  br label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %155

46:                                               ; preds = %40, %37, %34
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @NFP_CPP_ACTION_RW, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %50
  %54 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %55 = call i32 @NFP_PCIE_P2C_FIXED_SIZE(%struct.nfp_bar* %54)
  %56 = sub nsw i32 %55, 1
  %57 = xor i32 %56, -1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %24, align 8
  %59 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_MapType_FIXED, align 4
  %60 = call i64 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32 %59)
  %61 = load i64, i64* %23, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %23, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress(i32 %63)
  %65 = load i64, i64* %23, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %23, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call i64 @NFP_PCIE_BAR_PCIE2CPP_Action_BaseAddress(i32 %67)
  %69 = load i64, i64* %23, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %23, align 8
  %71 = load i32, i32* %18, align 4
  %72 = call i64 @NFP_PCIE_BAR_PCIE2CPP_Token_BaseAddress(i32 %71)
  %73 = load i64, i64* %23, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %23, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* %24, align 8
  %77 = and i64 %75, %76
  %78 = load i64, i64* %19, align 8
  %79 = load i64, i64* %20, align 8
  %80 = add i64 %78, %79
  %81 = sub i64 %80, 1
  %82 = load i64, i64* %24, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %77, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %53
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %155

88:                                               ; preds = %53
  %89 = load i64, i64* %24, align 8
  %90 = load i64, i64* %19, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %19, align 8
  store i32 24, i32* %22, align 4
  br label %127

92:                                               ; preds = %50, %46
  %93 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %94 = call i32 @NFP_PCIE_P2C_BULK_SIZE(%struct.nfp_bar* %93)
  %95 = sub nsw i32 %94, 1
  %96 = xor i32 %95, -1
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %25, align 8
  %98 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_MapType_BULK, align 4
  %99 = call i64 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32 %98)
  %100 = load i64, i64* %23, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %23, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i64 @NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress(i32 %102)
  %104 = load i64, i64* %23, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %23, align 8
  %106 = load i32, i32* %18, align 4
  %107 = call i64 @NFP_PCIE_BAR_PCIE2CPP_Token_BaseAddress(i32 %106)
  %108 = load i64, i64* %23, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %23, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %25, align 8
  %112 = and i64 %110, %111
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* %20, align 8
  %115 = add i64 %113, %114
  %116 = sub i64 %115, 1
  %117 = load i64, i64* %25, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %112, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %92
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %11, align 4
  br label %155

123:                                              ; preds = %92
  %124 = load i64, i64* %25, align 8
  %125 = load i64, i64* %19, align 8
  %126 = and i64 %125, %124
  store i64 %126, i64* %19, align 8
  store i32 19, i32* %22, align 4
  br label %127

127:                                              ; preds = %123, %88
  %128 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %129 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %22, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %11, align 4
  br label %155

136:                                              ; preds = %127
  %137 = load i64, i64* %19, align 8
  %138 = load i32, i32* %22, align 4
  %139 = zext i32 %138 to i64
  %140 = lshr i64 %137, %139
  %141 = load i64, i64* %23, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %23, align 8
  %143 = load i64*, i64** %15, align 8
  %144 = icmp ne i64* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = load i64, i64* %19, align 8
  %147 = load i64*, i64** %15, align 8
  store i64 %146, i64* %147, align 8
  br label %148

148:                                              ; preds = %145, %136
  %149 = load i64*, i64** %14, align 8
  %150 = icmp ne i64* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i64, i64* %23, align 8
  %153 = load i64*, i64** %14, align 8
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %148
  store i32 0, i32* %11, align 4
  br label %155

155:                                              ; preds = %154, %133, %120, %85, %43, %29
  %156 = load i32, i32* %11, align 4
  ret i32 %156
}

declare dso_local i64 @NFP_PCIE_BAR_PCIE2CPP_LengthSelect(i32) #1

declare dso_local i32 @NFP_PCIE_P2C_FIXED_SIZE(%struct.nfp_bar*) #1

declare dso_local i64 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32) #1

declare dso_local i64 @NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress(i32) #1

declare dso_local i64 @NFP_PCIE_BAR_PCIE2CPP_Action_BaseAddress(i32) #1

declare dso_local i64 @NFP_PCIE_BAR_PCIE2CPP_Token_BaseAddress(i32) #1

declare dso_local i32 @NFP_PCIE_P2C_BULK_SIZE(%struct.nfp_bar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
