; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_detect_gig_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_detect_gig_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@PHY_ID1 = common dso_local global i32 0, align 4
@PHY_ID2 = common dso_local global i32 0, align 4
@PHY_REVISION_MASK = common dso_local global i32 0, align 4
@M88E1000_E_PHY_ID = common dso_local global i32 0, align 4
@M88E1000_I_PHY_ID = common dso_local global i32 0, align 4
@M88E1011_I_PHY_ID = common dso_local global i32 0, align 4
@RTL8211B_PHY_ID = common dso_local global i32 0, align 4
@RTL8201N_PHY_ID = common dso_local global i32 0, align 4
@M88E1118_E_PHY_ID = common dso_local global i32 0, align 4
@IGP01E1000_I_PHY_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid MAC type %d\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"PHY ID 0x%X detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid PHY ID 0x%X\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_detect_gig_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_detect_gig_phy(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %14, i64* %2, align 8
  br label %145

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = load i32, i32* @PHY_ID1, align 4
  %18 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %16, i32 %17, i32* %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %145

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 16
  %26 = sext i32 %25 to i64
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = call i32 @udelay(i32 20)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @PHY_ID2, align 4
  %32 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %30, i32 %31, i32* %7)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %2, align 8
  br label %145

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PHY_REVISION_MASK, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PHY_REVISION_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %114 [
    i32 136, label %55
    i32 135, label %64
    i32 139, label %73
    i32 134, label %73
    i32 133, label %73
    i32 132, label %73
    i32 131, label %73
    i32 128, label %82
    i32 138, label %105
    i32 137, label %105
    i32 130, label %105
    i32 129, label %105
  ]

55:                                               ; preds = %37
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @M88E1000_E_PHY_ID, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %55
  br label %121

64:                                               ; preds = %37
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @M88E1000_I_PHY_ID, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %64
  br label %121

73:                                               ; preds = %37, %37, %37, %37, %37
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @M88E1011_I_PHY_ID, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %73
  br label %121

82:                                               ; preds = %37
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @RTL8211B_PHY_ID, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %103, label %89

89:                                               ; preds = %82
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @RTL8201N_PHY_ID, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @M88E1118_E_PHY_ID, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %89, %82
  store i32 1, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %96
  br label %121

105:                                              ; preds = %37, %37, %37, %37
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @IGP01E1000_I_PHY_ID, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i32 1, i32* %8, align 4
  br label %113

113:                                              ; preds = %112, %105
  br label %121

114:                                              ; preds = %37
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %116 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %120 = sub nsw i64 0, %119
  store i64 %120, i64* %2, align 8
  br label %145

121:                                              ; preds = %113, %104, %81, %72, %63
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = call i64 @e1000_set_phy_type(%struct.e1000_hw* %122)
  store i64 %123, i64* %4, align 8
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @E1000_SUCCESS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %132 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %136, i64* %2, align 8
  br label %145

137:                                              ; preds = %126, %121
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i64, i64* @E1000_ERR_PHY, align 8
  %144 = sub nsw i64 0, %143
  store i64 %144, i64* %2, align 8
  br label %145

145:                                              ; preds = %137, %130, %114, %35, %21, %13
  %146 = load i64, i64* %2, align 8
  ret i64 %146
}

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e_dbg(i8*, i32) #1

declare dso_local i64 @e1000_set_phy_type(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
