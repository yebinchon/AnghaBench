; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_initialize_M88E1512_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_initialize_M88E1512_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)* }
%struct.e1000_hw.0 = type opaque

@E1000_M88E1543_PAGE_ADDR = common dso_local global i32 0, align 4
@E1000_M88E1512_CFG_REG_2 = common dso_local global i32 0, align 4
@E1000_M88E1512_CFG_REG_1 = common dso_local global i32 0, align 4
@E1000_M88E1512_CFG_REG_3 = common dso_local global i32 0, align 4
@E1000_M88E1512_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error committing the PHY changes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_initialize_M88E1512_phy(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = bitcast %struct.e1000_hw* %12 to %struct.e1000_hw.0*
  %14 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %15 = call i64 %11(%struct.e1000_hw.0* %13, i32 %14, i32 255)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %185

19:                                               ; preds = %1
  %20 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.0*
  %26 = load i32, i32* @E1000_M88E1512_CFG_REG_2, align 4
  %27 = call i64 %23(%struct.e1000_hw.0* %25, i32 %26, i32 8523)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %185

31:                                               ; preds = %19
  %32 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.0*
  %38 = load i32, i32* @E1000_M88E1512_CFG_REG_1, align 4
  %39 = call i64 %35(%struct.e1000_hw.0* %37, i32 %38, i32 8516)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %185

43:                                               ; preds = %31
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %46, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = bitcast %struct.e1000_hw* %48 to %struct.e1000_hw.0*
  %50 = load i32, i32* @E1000_M88E1512_CFG_REG_2, align 4
  %51 = call i64 %47(%struct.e1000_hw.0* %49, i32 %50, i32 3112)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %185

55:                                               ; preds = %43
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.0*
  %62 = load i32, i32* @E1000_M88E1512_CFG_REG_1, align 4
  %63 = call i64 %59(%struct.e1000_hw.0* %61, i32 %62, i32 8518)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %185

67:                                               ; preds = %55
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %70, align 8
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = bitcast %struct.e1000_hw* %72 to %struct.e1000_hw.0*
  %74 = load i32, i32* @E1000_M88E1512_CFG_REG_2, align 4
  %75 = call i64 %71(%struct.e1000_hw.0* %73, i32 %74, i32 45619)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %185

79:                                               ; preds = %67
  %80 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %81 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %82, align 8
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = bitcast %struct.e1000_hw* %84 to %struct.e1000_hw.0*
  %86 = load i32, i32* @E1000_M88E1512_CFG_REG_1, align 4
  %87 = call i64 %83(%struct.e1000_hw.0* %85, i32 %86, i32 8525)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %185

91:                                               ; preds = %79
  %92 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %94, align 8
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = bitcast %struct.e1000_hw* %96 to %struct.e1000_hw.0*
  %98 = load i32, i32* @E1000_M88E1512_CFG_REG_2, align 4
  %99 = call i64 %95(%struct.e1000_hw.0* %97, i32 %98, i32 52236)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %185

103:                                              ; preds = %91
  %104 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %105 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %106, align 8
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = bitcast %struct.e1000_hw* %108 to %struct.e1000_hw.0*
  %110 = load i32, i32* @E1000_M88E1512_CFG_REG_1, align 4
  %111 = call i64 %107(%struct.e1000_hw.0* %109, i32 %110, i32 8537)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %185

115:                                              ; preds = %103
  %116 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %118, align 8
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = bitcast %struct.e1000_hw* %120 to %struct.e1000_hw.0*
  %122 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %123 = call i64 %119(%struct.e1000_hw.0* %121, i32 %122, i32 251)
  store i64 %123, i64* %5, align 8
  %124 = load i64, i64* %5, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %185

127:                                              ; preds = %115
  %128 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %129 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %130, align 8
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = bitcast %struct.e1000_hw* %132 to %struct.e1000_hw.0*
  %134 = load i32, i32* @E1000_M88E1512_CFG_REG_3, align 4
  %135 = call i64 %131(%struct.e1000_hw.0* %133, i32 %134, i32 13)
  store i64 %135, i64* %5, align 8
  %136 = load i64, i64* %5, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %185

139:                                              ; preds = %127
  %140 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %141 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %142, align 8
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %145 = bitcast %struct.e1000_hw* %144 to %struct.e1000_hw.0*
  %146 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %147 = call i64 %143(%struct.e1000_hw.0* %145, i32 %146, i32 18)
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %185

151:                                              ; preds = %139
  %152 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %153 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %154, align 8
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = bitcast %struct.e1000_hw* %156 to %struct.e1000_hw.0*
  %158 = load i32, i32* @E1000_M88E1512_MODE, align 4
  %159 = call i64 %155(%struct.e1000_hw.0* %157, i32 %158, i32 32769)
  store i64 %159, i64* %5, align 8
  %160 = load i64, i64* %5, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %185

163:                                              ; preds = %151
  %164 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %165 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %166, align 8
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %169 = bitcast %struct.e1000_hw* %168 to %struct.e1000_hw.0*
  %170 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %171 = call i64 %167(%struct.e1000_hw.0* %169, i32 %170, i32 0)
  store i64 %171, i64* %5, align 8
  %172 = load i64, i64* %5, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  br label %185

175:                                              ; preds = %163
  %176 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %177 = call i64 @igb_phy_sw_reset(%struct.e1000_hw* %176)
  store i64 %177, i64* %5, align 8
  %178 = load i64, i64* %5, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = call i32 @hw_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %182 = load i64, i64* %5, align 8
  store i64 %182, i64* %2, align 8
  br label %187

183:                                              ; preds = %175
  %184 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %185

185:                                              ; preds = %183, %174, %162, %150, %138, %126, %114, %102, %90, %78, %66, %54, %42, %30, %18
  %186 = load i64, i64* %5, align 8
  store i64 %186, i64* %2, align 8
  br label %187

187:                                              ; preds = %185, %180
  %188 = load i64, i64* %2, align 8
  ret i64 %188
}

declare dso_local i64 @igb_phy_sw_reset(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
