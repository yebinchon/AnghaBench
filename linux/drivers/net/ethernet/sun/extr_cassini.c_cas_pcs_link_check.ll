; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_pcs_link_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_pcs_link_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, i64, i32, i32, i8*, i64, i32, i64 }

@REG_PCS_MII_STATUS = common dso_local global i64 0, align 8
@PCS_MII_STATUS_LINK_STATUS = common dso_local global i32 0, align 4
@PCS_MII_STATUS_AUTONEG_COMP = common dso_local global i32 0, align 4
@PCS_MII_STATUS_REMOTE_FAULT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PCS RemoteFault\0A\00", align 1
@REG_PCS_STATE_MACHINE = common dso_local global i64 0, align 8
@PCS_SM_LINK_STATE_MASK = common dso_local global i32 0, align 4
@SM_LINK_STATE_UP = common dso_local global i32 0, align 4
@PCS_SM_WORD_SYNC_STATE_MASK = common dso_local global i32 0, align 4
@link_up = common dso_local global i64 0, align 8
@LINK_TRANSITION_LINK_UP = common dso_local global i64 0, align 8
@link_down = common dso_local global i64 0, align 8
@link_transition_timeout = common dso_local global i64 0, align 8
@LINK_TRANSITION_REQUESTED_RESET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@LINK_TRANSITION_ON_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"PCS link down\0A\00", align 1
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@REG_PCS_SERDES_STATE = common dso_local global i64 0, align 8
@LINK_TRANSITION_STILL_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*)* @cas_pcs_link_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_pcs_link_check(%struct.cas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cas*, %struct.cas** %3, align 8
  %8 = getelementptr inbounds %struct.cas, %struct.cas* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REG_PCS_MII_STATUS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PCS_MII_STATUS_LINK_STATUS, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.cas*, %struct.cas** %3, align 8
  %19 = getelementptr inbounds %struct.cas, %struct.cas* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_PCS_MII_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PCS_MII_STATUS_AUTONEG_COMP, align 4
  %27 = load i32, i32* @PCS_MII_STATUS_REMOTE_FAULT, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @PCS_MII_STATUS_AUTONEG_COMP, align 4
  %31 = load i32, i32* @PCS_MII_STATUS_REMOTE_FAULT, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.cas*, %struct.cas** %3, align 8
  %36 = load i32, i32* @link, align 4
  %37 = load %struct.cas*, %struct.cas** %3, align 8
  %38 = getelementptr inbounds %struct.cas, %struct.cas* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netif_info(%struct.cas* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %34, %24
  %42 = load %struct.cas*, %struct.cas** %3, align 8
  %43 = getelementptr inbounds %struct.cas, %struct.cas* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_PCS_STATE_MACHINE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PCS_SM_LINK_STATE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SM_LINK_STATE_UP, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load i32, i32* @PCS_MII_STATUS_LINK_STATUS, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %68

58:                                               ; preds = %41
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PCS_SM_WORD_SYNC_STATE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @PCS_MII_STATUS_LINK_STATUS, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PCS_MII_STATUS_LINK_STATUS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load %struct.cas*, %struct.cas** %3, align 8
  %75 = getelementptr inbounds %struct.cas, %struct.cas* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @link_up, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.cas*, %struct.cas** %3, align 8
  %81 = getelementptr inbounds %struct.cas, %struct.cas* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load i64, i64* @link_up, align 8
  %86 = load %struct.cas*, %struct.cas** %3, align 8
  %87 = getelementptr inbounds %struct.cas, %struct.cas* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* @LINK_TRANSITION_LINK_UP, align 8
  %89 = load %struct.cas*, %struct.cas** %3, align 8
  %90 = getelementptr inbounds %struct.cas, %struct.cas* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.cas*, %struct.cas** %3, align 8
  %92 = call i32 @cas_set_link_modes(%struct.cas* %91)
  %93 = load %struct.cas*, %struct.cas** %3, align 8
  %94 = getelementptr inbounds %struct.cas, %struct.cas* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @netif_carrier_on(i32 %95)
  br label %97

97:                                               ; preds = %84, %79
  br label %98

98:                                               ; preds = %97, %73
  br label %206

99:                                               ; preds = %68
  %100 = load %struct.cas*, %struct.cas** %3, align 8
  %101 = getelementptr inbounds %struct.cas, %struct.cas* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @link_up, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %170

105:                                              ; preds = %99
  %106 = load i64, i64* @link_down, align 8
  %107 = load %struct.cas*, %struct.cas** %3, align 8
  %108 = getelementptr inbounds %struct.cas, %struct.cas* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* @link_transition_timeout, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %105
  %112 = load %struct.cas*, %struct.cas** %3, align 8
  %113 = getelementptr inbounds %struct.cas, %struct.cas* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LINK_TRANSITION_REQUESTED_RESET, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %111
  %118 = load %struct.cas*, %struct.cas** %3, align 8
  %119 = getelementptr inbounds %struct.cas, %struct.cas* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %117
  store i32 1, i32* %6, align 4
  %123 = load i64, i64* @LINK_TRANSITION_REQUESTED_RESET, align 8
  %124 = load %struct.cas*, %struct.cas** %3, align 8
  %125 = getelementptr inbounds %struct.cas, %struct.cas* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i8*, i8** @jiffies, align 8
  %127 = load %struct.cas*, %struct.cas** %3, align 8
  %128 = getelementptr inbounds %struct.cas, %struct.cas* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load %struct.cas*, %struct.cas** %3, align 8
  %130 = getelementptr inbounds %struct.cas, %struct.cas* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  br label %135

131:                                              ; preds = %117, %111, %105
  %132 = load i64, i64* @LINK_TRANSITION_ON_FAILURE, align 8
  %133 = load %struct.cas*, %struct.cas** %3, align 8
  %134 = getelementptr inbounds %struct.cas, %struct.cas* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %122
  %136 = load %struct.cas*, %struct.cas** %3, align 8
  %137 = getelementptr inbounds %struct.cas, %struct.cas* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @netif_carrier_off(i32 %138)
  %140 = load %struct.cas*, %struct.cas** %3, align 8
  %141 = getelementptr inbounds %struct.cas, %struct.cas* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %135
  %145 = load %struct.cas*, %struct.cas** %3, align 8
  %146 = load i32, i32* @link, align 4
  %147 = load %struct.cas*, %struct.cas** %3, align 8
  %148 = getelementptr inbounds %struct.cas, %struct.cas* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @netif_info(%struct.cas* %145, i32 %146, i32 %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %151

151:                                              ; preds = %144, %135
  %152 = load %struct.cas*, %struct.cas** %3, align 8
  %153 = getelementptr inbounds %struct.cas, %struct.cas* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %151
  %159 = load %struct.cas*, %struct.cas** %3, align 8
  %160 = getelementptr inbounds %struct.cas, %struct.cas* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @REG_PCS_SERDES_STATE, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @readl(i64 %163)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp eq i32 %165, 3
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 1, i32* %2, align 4
  br label %208

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %151
  br label %205

170:                                              ; preds = %99
  %171 = load %struct.cas*, %struct.cas** %3, align 8
  %172 = getelementptr inbounds %struct.cas, %struct.cas* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @link_down, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %204

176:                                              ; preds = %170
  %177 = load i64, i64* @link_transition_timeout, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load %struct.cas*, %struct.cas** %3, align 8
  %181 = getelementptr inbounds %struct.cas, %struct.cas* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @LINK_TRANSITION_REQUESTED_RESET, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %179
  %186 = load %struct.cas*, %struct.cas** %3, align 8
  %187 = getelementptr inbounds %struct.cas, %struct.cas* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %185
  store i32 1, i32* %6, align 4
  %191 = load i64, i64* @LINK_TRANSITION_REQUESTED_RESET, align 8
  %192 = load %struct.cas*, %struct.cas** %3, align 8
  %193 = getelementptr inbounds %struct.cas, %struct.cas* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  %194 = load i8*, i8** @jiffies, align 8
  %195 = load %struct.cas*, %struct.cas** %3, align 8
  %196 = getelementptr inbounds %struct.cas, %struct.cas* %195, i32 0, i32 4
  store i8* %194, i8** %196, align 8
  %197 = load %struct.cas*, %struct.cas** %3, align 8
  %198 = getelementptr inbounds %struct.cas, %struct.cas* %197, i32 0, i32 2
  store i32 1, i32* %198, align 8
  br label %203

199:                                              ; preds = %185, %179, %176
  %200 = load i64, i64* @LINK_TRANSITION_STILL_FAILED, align 8
  %201 = load %struct.cas*, %struct.cas** %3, align 8
  %202 = getelementptr inbounds %struct.cas, %struct.cas* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %199, %190
  br label %204

204:                                              ; preds = %203, %170
  br label %205

205:                                              ; preds = %204, %169
  br label %206

206:                                              ; preds = %205, %98
  %207 = load i32, i32* %6, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %167
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_info(%struct.cas*, i32, i32, i8*) #1

declare dso_local i32 @cas_set_link_modes(%struct.cas*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
