; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_check_mac_link_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_check_mac_link_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_phy_nl = common dso_local global i64 0, align 8
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@IXGBE_LINK_UP_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82598AT2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32*, i32)* @ixgbe_check_mac_link_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_check_mac_link_82598(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ixgbe_phy_nl, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %110

20:                                               ; preds = %4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %24, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %27 = bitcast %struct.ixgbe_hw* %26 to %struct.ixgbe_hw.0*
  %28 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %29 = call i32 %25(%struct.ixgbe_hw.0* %27, i32 51103, i32 %28, i32* %12)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.0*
  %37 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %38 = call i32 %34(%struct.ixgbe_hw.0* %36, i32 51103, i32 %37, i32* %12)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %42, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %45 = bitcast %struct.ixgbe_hw* %44 to %struct.ixgbe_hw.0*
  %46 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %47 = call i32 %43(%struct.ixgbe_hw.0* %45, i32 49164, i32 %46, i32* %13)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %20
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %87, %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @IXGBE_LINK_UP_TIME, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  store i32 1, i32* %64, align 4
  br label %90

65:                                               ; preds = %59, %55
  %66 = load i32*, i32** %8, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %65
  %68 = call i32 @msleep(i32 100)
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %72, align 8
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %75 = bitcast %struct.ixgbe_hw* %74 to %struct.ixgbe_hw.0*
  %76 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %77 = call i32 %73(%struct.ixgbe_hw.0* %75, i32 51103, i32 %76, i32* %12)
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %81, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %84 = bitcast %struct.ixgbe_hw* %83 to %struct.ixgbe_hw.0*
  %85 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %86 = call i32 %82(%struct.ixgbe_hw.0* %84, i32 49164, i32 %85, i32* %13)
  br label %87

87:                                               ; preds = %67
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %11, align 8
  br label %51

90:                                               ; preds = %63, %51
  br label %104

91:                                               ; preds = %20
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32*, i32** %8, align 8
  store i32 1, i32* %100, align 4
  br label %103

101:                                              ; preds = %95, %91
  %102 = load i32*, i32** %8, align 8
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %99
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %177

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %4
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %112 = load i32, i32* @IXGBE_LINKS, align 4
  %113 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %111, i32 %112)
  store i64 %113, i64* %10, align 8
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %110
  store i64 0, i64* %11, align 8
  br label %117

117:                                              ; preds = %135, %116
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* @IXGBE_LINK_UP_TIME, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %117
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32*, i32** %8, align 8
  store i32 1, i32* %127, align 4
  br label %138

128:                                              ; preds = %121
  %129 = load i32*, i32** %8, align 8
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %128
  %131 = call i32 @msleep(i32 100)
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %133 = load i32, i32* @IXGBE_LINKS, align 4
  %134 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %132, i32 %133)
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %130
  %136 = load i64, i64* %11, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %11, align 8
  br label %117

138:                                              ; preds = %126, %117
  br label %149

139:                                              ; preds = %110
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32*, i32** %8, align 8
  store i32 1, i32* %145, align 4
  br label %148

146:                                              ; preds = %139
  %147 = load i32*, i32** %8, align 8
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %144
  br label %149

149:                                              ; preds = %148, %138
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* @IXGBE_LINKS_SPEED, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %156 = load i32*, i32** %7, align 8
  store i32 %155, i32* %156, align 4
  br label %160

157:                                              ; preds = %149
  %158 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %159 = load i32*, i32** %7, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %154
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %162 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IXGBE_DEV_ID_82598AT2, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %172 = call i64 @ixgbe_validate_link_ready(%struct.ixgbe_hw* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32*, i32** %8, align 8
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %174, %170, %166, %160
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %176, %108
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_validate_link_ready(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
