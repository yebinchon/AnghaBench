; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5706_serdes_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5706_serdes_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, i32, i32, i32, i32, i8*, i64 }

@AUTONEG_SPEED = common dso_local global i32 0, align 4
@BNX2_TIMER_INTERVAL = common dso_local global i8* null, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_PARALLEL_DETECT = common dso_local global i32 0, align 4
@MII_BNX2_MISC_SHADOW = common dso_local global i32 0, align 4
@MISC_SHDW_AN_DBG = common dso_local global i32 0, align 4
@MISC_SHDW_AN_DBG_NOSYNC = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_FORCED_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_5706_serdes_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_5706_serdes_timer(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 1, i32* %3, align 4
  %8 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 4
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  store i32 0, i32* %3, align 4
  br label %127

20:                                               ; preds = %1
  %21 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %20
  %26 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AUTONEG_SPEED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %25
  %33 = load i8*, i8** @BNX2_TIMER_INTERVAL, align 8
  %34 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %37 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %38 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bnx2_read_phy(%struct.bnx2* %36, i32 %39, i32* %4)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @BMCR_ANENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %32
  %46 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %47 = call i64 @bnx2_5706_serdes_has_link(%struct.bnx2* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load i32, i32* @BMCR_ANENABLE, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @BMCR_SPEED1000, align 4
  %55 = load i32, i32* @BMCR_FULLDPLX, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %60 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %61 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @bnx2_write_phy(%struct.bnx2* %59, i32 %62, i32 %63)
  %65 = load i32, i32* @BNX2_PHY_FLAG_PARALLEL_DETECT, align 4
  %66 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %67 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %49, %45
  br label %71

71:                                               ; preds = %70, %32
  br label %126

72:                                               ; preds = %25, %20
  %73 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %74 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %121

77:                                               ; preds = %72
  %78 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %79 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @AUTONEG_SPEED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %77
  %85 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %86 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BNX2_PHY_FLAG_PARALLEL_DETECT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %84
  %92 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %93 = call i32 @bnx2_write_phy(%struct.bnx2* %92, i32 23, i32 3841)
  %94 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %95 = call i32 @bnx2_read_phy(%struct.bnx2* %94, i32 21, i32* %5)
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %91
  %100 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %101 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %102 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bnx2_read_phy(%struct.bnx2* %100, i32 %103, i32* %6)
  %105 = load i32, i32* @BMCR_ANENABLE, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %109 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %110 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @bnx2_write_phy(%struct.bnx2* %108, i32 %111, i32 %112)
  %114 = load i32, i32* @BNX2_PHY_FLAG_PARALLEL_DETECT, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %117 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %99, %91
  br label %125

121:                                              ; preds = %84, %77, %72
  %122 = load i8*, i8** @BNX2_TIMER_INTERVAL, align 8
  %123 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %124 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %120
  br label %126

126:                                              ; preds = %125, %71
  br label %127

127:                                              ; preds = %126, %15
  %128 = load i32, i32* %3, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %184

130:                                              ; preds = %127
  %131 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %132 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %133 = load i32, i32* @MISC_SHDW_AN_DBG, align 4
  %134 = call i32 @bnx2_write_phy(%struct.bnx2* %131, i32 %132, i32 %133)
  %135 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %136 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %137 = call i32 @bnx2_read_phy(%struct.bnx2* %135, i32 %136, i32* %7)
  %138 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %139 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %140 = call i32 @bnx2_read_phy(%struct.bnx2* %138, i32 %139, i32* %7)
  %141 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %142 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %169

145:                                              ; preds = %130
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @MISC_SHDW_AN_DBG_NOSYNC, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %145
  %151 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %152 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @BNX2_PHY_FLAG_FORCED_DOWN, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %150
  %158 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %159 = call i32 @bnx2_5706s_force_link_dn(%struct.bnx2* %158, i32 1)
  %160 = load i32, i32* @BNX2_PHY_FLAG_FORCED_DOWN, align 4
  %161 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %162 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %168

165:                                              ; preds = %150
  %166 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %167 = call i32 @bnx2_set_link(%struct.bnx2* %166)
  br label %168

168:                                              ; preds = %165, %157
  br label %183

169:                                              ; preds = %145, %130
  %170 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %171 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @MISC_SHDW_AN_DBG_NOSYNC, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %181 = call i32 @bnx2_set_link(%struct.bnx2* %180)
  br label %182

182:                                              ; preds = %179, %174, %169
  br label %183

183:                                              ; preds = %182, %168
  br label %184

184:                                              ; preds = %183, %127
  %185 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %186 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %185, i32 0, i32 4
  %187 = call i32 @spin_unlock(i32* %186)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

declare dso_local i64 @bnx2_5706_serdes_has_link(%struct.bnx2*) #1

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_5706s_force_link_dn(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_set_link(%struct.bnx2*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
