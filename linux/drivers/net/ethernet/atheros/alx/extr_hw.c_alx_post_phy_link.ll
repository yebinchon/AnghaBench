; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_post_phy_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_post_phy_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i64, i64 }

@ALX_REV_B0 = common dso_local global i64 0, align 8
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ALX_MIIEXT_PCS = common dso_local global i32 0, align 4
@ALX_MIIEXT_CLDCTRL6 = common dso_local global i32 0, align 4
@ALX_CLDCTRL6_CAB_LEN = common dso_local global i32 0, align 4
@ALX_MIIDBG_AGC = common dso_local global i32 0, align 4
@ALX_AGC_2_VGA = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@ALX_CLDCTRL6_CAB_LEN_SHORT1G = common dso_local global i64 0, align 8
@ALX_AGC_LONG1G_LIMT = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@ALX_CLDCTRL6_CAB_LEN_SHORT100M = common dso_local global i64 0, align 8
@ALX_AGC_LONG100M_LIMT = common dso_local global i64 0, align 8
@ALX_MIIDBG_AZ_ANADECT = common dso_local global i32 0, align 4
@ALX_AZ_ANADECT_LONG = common dso_local global i64 0, align 8
@ALX_MIIEXT_ANEG = common dso_local global i32 0, align 4
@ALX_MIIEXT_AFE = common dso_local global i32 0, align 4
@ALX_AFE_10BT_100M_TH = common dso_local global i64 0, align 8
@ALX_AZ_ANADECT_DEF = common dso_local global i64 0, align 8
@ALX_MIIDBG_MSE16DB = common dso_local global i32 0, align 4
@ALX_MSE16DB_UP = common dso_local global i64 0, align 8
@ALX_MIIDBG_MSE20DB = common dso_local global i32 0, align 4
@ALX_MSE20DB_TH = common dso_local global i32 0, align 4
@ALX_MSE20DB_TH_HI = common dso_local global i32 0, align 4
@ALX_MSE16DB_DOWN = common dso_local global i64 0, align 8
@ALX_MSE20DB_TH_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alx_post_phy_link(%struct.alx_hw* %0) #0 {
  %2 = alloca %struct.alx_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %2, align 8
  %8 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %9 = call i64 @alx_hw_revision(%struct.alx_hw* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @ALX_REV_B0, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @ALX_REV_B0, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @alx_is_rev_a(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %185

22:                                               ; preds = %17, %1
  %23 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %24 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPEED_UNKNOWN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %148

28:                                               ; preds = %22
  %29 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %30 = load i32, i32* @ALX_MIIEXT_PCS, align 4
  %31 = load i32, i32* @ALX_MIIEXT_CLDCTRL6, align 4
  %32 = call i32 @alx_read_phy_ext(%struct.alx_hw* %29, i32 %30, i32 %31, i64* %3)
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @ALX_CLDCTRL6_CAB_LEN, align 4
  %35 = call i64 @ALX_GET_FIELD(i64 %33, i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %37 = load i32, i32* @ALX_MIIDBG_AGC, align 4
  %38 = call i32 @alx_read_phy_dbg(%struct.alx_hw* %36, i32 %37, i64* %3)
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* @ALX_AGC_2_VGA, align 4
  %41 = call i64 @ALX_GET_FIELD(i64 %39, i32 %40)
  store i64 %41, i64* %5, align 8
  %42 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %43 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPEED_1000, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %28
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @ALX_CLDCTRL6_CAB_LEN_SHORT1G, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %75, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @ALX_AGC_LONG1G_LIMT, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %75, label %58

58:                                               ; preds = %54, %51, %28
  %59 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %60 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SPEED_100, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @ALX_CLDCTRL6_CAB_LEN_SHORT100M, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @ALX_AGC_LONG100M_LIMT, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71, %64, %54, %47
  %76 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %77 = load i32, i32* @ALX_MIIDBG_AZ_ANADECT, align 4
  %78 = load i64, i64* @ALX_AZ_ANADECT_LONG, align 8
  %79 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %76, i32 %77, i64 %78)
  %80 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %81 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %82 = load i32, i32* @ALX_MIIEXT_AFE, align 4
  %83 = call i32 @alx_read_phy_ext(%struct.alx_hw* %80, i32 %81, i32 %82, i64* %3)
  %84 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %85 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %86 = load i32, i32* @ALX_MIIEXT_AFE, align 4
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* @ALX_AFE_10BT_100M_TH, align 8
  %89 = or i64 %87, %88
  %90 = call i32 @alx_write_phy_ext(%struct.alx_hw* %84, i32 %85, i32 %86, i64 %89)
  br label %108

91:                                               ; preds = %71, %68, %58
  %92 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %93 = load i32, i32* @ALX_MIIDBG_AZ_ANADECT, align 4
  %94 = load i64, i64* @ALX_AZ_ANADECT_DEF, align 8
  %95 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %92, i32 %93, i64 %94)
  %96 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %97 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %98 = load i32, i32* @ALX_MIIEXT_AFE, align 4
  %99 = call i32 @alx_read_phy_ext(%struct.alx_hw* %96, i32 %97, i32 %98, i64* %3)
  %100 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %101 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %102 = load i32, i32* @ALX_MIIEXT_AFE, align 4
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* @ALX_AFE_10BT_100M_TH, align 8
  %105 = xor i64 %104, -1
  %106 = and i64 %103, %105
  %107 = call i32 @alx_write_phy_ext(%struct.alx_hw* %100, i32 %101, i32 %102, i64 %106)
  br label %108

108:                                              ; preds = %91, %75
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %108
  %112 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %113 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %111
  %117 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %118 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SPEED_100, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %124 = load i32, i32* @ALX_MIIDBG_MSE16DB, align 4
  %125 = load i64, i64* @ALX_MSE16DB_UP, align 8
  %126 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %123, i32 %124, i64 %125)
  br label %146

127:                                              ; preds = %116
  %128 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %129 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SPEED_1000, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %127
  %134 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %135 = load i32, i32* @ALX_MIIDBG_MSE20DB, align 4
  %136 = call i32 @alx_read_phy_dbg(%struct.alx_hw* %134, i32 %135, i64* %3)
  %137 = load i64, i64* %3, align 8
  %138 = load i32, i32* @ALX_MSE20DB_TH, align 4
  %139 = load i32, i32* @ALX_MSE20DB_TH_HI, align 4
  %140 = call i32 @ALX_SET_FIELD(i64 %137, i32 %138, i32 %139)
  %141 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %142 = load i32, i32* @ALX_MIIDBG_MSE20DB, align 4
  %143 = load i64, i64* %3, align 8
  %144 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %141, i32 %142, i64 %143)
  br label %145

145:                                              ; preds = %133, %127
  br label %146

146:                                              ; preds = %145, %122
  br label %147

147:                                              ; preds = %146, %111, %108
  br label %185

148:                                              ; preds = %22
  %149 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %150 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %151 = load i32, i32* @ALX_MIIEXT_AFE, align 4
  %152 = call i32 @alx_read_phy_ext(%struct.alx_hw* %149, i32 %150, i32 %151, i64* %3)
  %153 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %154 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %155 = load i32, i32* @ALX_MIIEXT_AFE, align 4
  %156 = load i64, i64* %3, align 8
  %157 = load i64, i64* @ALX_AFE_10BT_100M_TH, align 8
  %158 = xor i64 %157, -1
  %159 = and i64 %156, %158
  %160 = call i32 @alx_write_phy_ext(%struct.alx_hw* %153, i32 %154, i32 %155, i64 %159)
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %148
  %164 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %165 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %163
  %169 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %170 = load i32, i32* @ALX_MIIDBG_MSE16DB, align 4
  %171 = load i64, i64* @ALX_MSE16DB_DOWN, align 8
  %172 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %169, i32 %170, i64 %171)
  %173 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %174 = load i32, i32* @ALX_MIIDBG_MSE20DB, align 4
  %175 = call i32 @alx_read_phy_dbg(%struct.alx_hw* %173, i32 %174, i64* %3)
  %176 = load i64, i64* %3, align 8
  %177 = load i32, i32* @ALX_MSE20DB_TH, align 4
  %178 = load i32, i32* @ALX_MSE20DB_TH_DEF, align 4
  %179 = call i32 @ALX_SET_FIELD(i64 %176, i32 %177, i32 %178)
  %180 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %181 = load i32, i32* @ALX_MIIDBG_MSE20DB, align 4
  %182 = load i64, i64* %3, align 8
  %183 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %180, i32 %181, i64 %182)
  br label %184

184:                                              ; preds = %168, %163, %148
  br label %185

185:                                              ; preds = %21, %184, %147
  ret void
}

declare dso_local i64 @alx_hw_revision(%struct.alx_hw*) #1

declare dso_local i32 @alx_is_rev_a(i64) #1

declare dso_local i32 @alx_read_phy_ext(%struct.alx_hw*, i32, i32, i64*) #1

declare dso_local i64 @ALX_GET_FIELD(i64, i32) #1

declare dso_local i32 @alx_read_phy_dbg(%struct.alx_hw*, i32, i64*) #1

declare dso_local i32 @alx_write_phy_dbg(%struct.alx_hw*, i32, i64) #1

declare dso_local i32 @alx_write_phy_ext(%struct.alx_hw*, i32, i32, i64) #1

declare dso_local i32 @ALX_SET_FIELD(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
