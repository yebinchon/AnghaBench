; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_periodic_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_periodic_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AD_PORT_BEGIN = common dso_local global i32 0, align 4
@AD_PORT_LACP_ENABLED = common dso_local global i32 0, align 4
@AD_STATE_LACP_ACTIVITY = common dso_local global i32 0, align 4
@AD_STATE_LACP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Periodic Machine: Port=%d, Last State=%d, Curr State=%d\0A\00", align 1
@AD_PERIODIC_TIMER = common dso_local global i32 0, align 4
@AD_FAST_PERIODIC_TIME = common dso_local global i32 0, align 4
@AD_SLOW_PERIODIC_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @ad_periodic_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_periodic_machine(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = load %struct.port*, %struct.port** %2, align 8
  %5 = getelementptr inbounds %struct.port, %struct.port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.port*, %struct.port** %2, align 8
  %8 = getelementptr inbounds %struct.port, %struct.port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AD_PORT_BEGIN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %1
  %14 = load %struct.port*, %struct.port** %2, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AD_PORT_LACP_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load %struct.port*, %struct.port** %2, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.port*, %struct.port** %2, align 8
  %27 = getelementptr inbounds %struct.port, %struct.port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AD_STATE_LACP_ACTIVITY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %25
  %33 = load %struct.port*, %struct.port** %2, align 8
  %34 = getelementptr inbounds %struct.port, %struct.port* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AD_STATE_LACP_ACTIVITY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32, %20, %13, %1
  %41 = load %struct.port*, %struct.port** %2, align 8
  %42 = getelementptr inbounds %struct.port, %struct.port* %41, i32 0, i32 0
  store i64 130, i64* %42, align 8
  br label %115

43:                                               ; preds = %32, %25
  %44 = load %struct.port*, %struct.port** %2, align 8
  %45 = getelementptr inbounds %struct.port, %struct.port* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = load %struct.port*, %struct.port** %2, align 8
  %50 = getelementptr inbounds %struct.port, %struct.port* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load %struct.port*, %struct.port** %2, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 0
  store i64 129, i64* %56, align 8
  br label %89

57:                                               ; preds = %48
  %58 = load %struct.port*, %struct.port** %2, align 8
  %59 = getelementptr inbounds %struct.port, %struct.port* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  switch i64 %60, label %87 [
    i64 131, label %61
    i64 128, label %73
  ]

61:                                               ; preds = %57
  %62 = load %struct.port*, %struct.port** %2, align 8
  %63 = getelementptr inbounds %struct.port, %struct.port* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AD_STATE_LACP_TIMEOUT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load %struct.port*, %struct.port** %2, align 8
  %71 = getelementptr inbounds %struct.port, %struct.port* %70, i32 0, i32 0
  store i64 128, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %61
  br label %88

73:                                               ; preds = %57
  %74 = load %struct.port*, %struct.port** %2, align 8
  %75 = getelementptr inbounds %struct.port, %struct.port* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @AD_STATE_LACP_TIMEOUT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.port*, %struct.port** %2, align 8
  %83 = getelementptr inbounds %struct.port, %struct.port* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.port*, %struct.port** %2, align 8
  %85 = getelementptr inbounds %struct.port, %struct.port* %84, i32 0, i32 0
  store i64 129, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %73
  br label %88

87:                                               ; preds = %57
  br label %88

88:                                               ; preds = %87, %86, %72
  br label %89

89:                                               ; preds = %88, %54
  br label %114

90:                                               ; preds = %43
  %91 = load %struct.port*, %struct.port** %2, align 8
  %92 = getelementptr inbounds %struct.port, %struct.port* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  switch i64 %93, label %112 [
    i64 130, label %94
    i64 129, label %97
  ]

94:                                               ; preds = %90
  %95 = load %struct.port*, %struct.port** %2, align 8
  %96 = getelementptr inbounds %struct.port, %struct.port* %95, i32 0, i32 0
  store i64 131, i64* %96, align 8
  br label %113

97:                                               ; preds = %90
  %98 = load %struct.port*, %struct.port** %2, align 8
  %99 = getelementptr inbounds %struct.port, %struct.port* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @AD_STATE_LACP_TIMEOUT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load %struct.port*, %struct.port** %2, align 8
  %107 = getelementptr inbounds %struct.port, %struct.port* %106, i32 0, i32 0
  store i64 128, i64* %107, align 8
  br label %111

108:                                              ; preds = %97
  %109 = load %struct.port*, %struct.port** %2, align 8
  %110 = getelementptr inbounds %struct.port, %struct.port* %109, i32 0, i32 0
  store i64 131, i64* %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  br label %113

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %111, %94
  br label %114

114:                                              ; preds = %113, %89
  br label %115

115:                                              ; preds = %114, %40
  %116 = load %struct.port*, %struct.port** %2, align 8
  %117 = getelementptr inbounds %struct.port, %struct.port* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %3, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %115
  %122 = load %struct.port*, %struct.port** %2, align 8
  %123 = getelementptr inbounds %struct.port, %struct.port* %122, i32 0, i32 6
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.port*, %struct.port** %2, align 8
  %130 = getelementptr inbounds %struct.port, %struct.port* %129, i32 0, i32 6
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.port*, %struct.port** %2, align 8
  %135 = getelementptr inbounds %struct.port, %struct.port* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* %3, align 8
  %138 = load %struct.port*, %struct.port** %2, align 8
  %139 = getelementptr inbounds %struct.port, %struct.port* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @slave_dbg(i32 %128, i32 %133, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %136, i64 %137, i64 %140)
  %142 = load %struct.port*, %struct.port** %2, align 8
  %143 = getelementptr inbounds %struct.port, %struct.port* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  switch i64 %144, label %167 [
    i64 130, label %145
    i64 131, label %148
    i64 128, label %156
    i64 129, label %164
  ]

145:                                              ; preds = %121
  %146 = load %struct.port*, %struct.port** %2, align 8
  %147 = getelementptr inbounds %struct.port, %struct.port* %146, i32 0, i32 4
  store i64 0, i64* %147, align 8
  br label %168

148:                                              ; preds = %121
  %149 = load i32, i32* @AD_PERIODIC_TIMER, align 4
  %150 = load i32, i32* @AD_FAST_PERIODIC_TIME, align 4
  %151 = call i32 @__ad_timer_to_ticks(i32 %149, i32 %150)
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = load %struct.port*, %struct.port** %2, align 8
  %155 = getelementptr inbounds %struct.port, %struct.port* %154, i32 0, i32 4
  store i64 %153, i64* %155, align 8
  br label %168

156:                                              ; preds = %121
  %157 = load i32, i32* @AD_PERIODIC_TIMER, align 4
  %158 = load i32, i32* @AD_SLOW_PERIODIC_TIME, align 4
  %159 = call i32 @__ad_timer_to_ticks(i32 %157, i32 %158)
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = load %struct.port*, %struct.port** %2, align 8
  %163 = getelementptr inbounds %struct.port, %struct.port* %162, i32 0, i32 4
  store i64 %161, i64* %163, align 8
  br label %168

164:                                              ; preds = %121
  %165 = load %struct.port*, %struct.port** %2, align 8
  %166 = getelementptr inbounds %struct.port, %struct.port* %165, i32 0, i32 3
  store i32 1, i32* %166, align 8
  br label %168

167:                                              ; preds = %121
  br label %168

168:                                              ; preds = %167, %164, %156, %148, %145
  br label %169

169:                                              ; preds = %168, %115
  ret void
}

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @__ad_timer_to_ticks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
