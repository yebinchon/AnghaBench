; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_lo_probe_loctls_statemachine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_lo_probe_loctls_statemachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, i32 }
%struct.b43_loctl = type { i64, i64 }
%struct.b43_lo_g_statemachine = type { i32, i32, i32, i32, %struct.b43_loctl }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_loctl*, i32*)* @lo_probe_loctls_statemachine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_probe_loctls_statemachine(%struct.b43_wldev* %0, %struct.b43_loctl* %1, i32* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.b43_loctl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.b43_phy*, align 8
  %8 = alloca %struct.b43_phy_g*, align 8
  %9 = alloca %struct.b43_lo_g_statemachine, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.b43_loctl, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.b43_loctl* %1, %struct.b43_loctl** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  store %struct.b43_phy* %16, %struct.b43_phy** %7, align 8
  %17 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %18 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %17, i32 0, i32 0
  %19 = load %struct.b43_phy_g*, %struct.b43_phy_g** %18, align 8
  store %struct.b43_phy_g* %19, %struct.b43_phy_g** %8, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %23 = call i64 @has_loopback_gain(%struct.b43_phy* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 1
  store i32 3, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 4
  %29 = load %struct.b43_loctl*, %struct.b43_loctl** %5, align 8
  %30 = call i32 @memcpy(%struct.b43_loctl* %28, %struct.b43_loctl* %29, i32 16)
  %31 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %32 = call i64 @has_loopback_gain(%struct.b43_phy* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 4, i32* %13, align 4
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %177, %35
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %38 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 4
  %39 = call i32 @b43_lo_write(%struct.b43_wldev* %37, %struct.b43_loctl* %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %41 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %42 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %45 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %48 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @lo_measure_feedthrough(%struct.b43_wldev* %40, i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 600
  br i1 %52, label %53, label %76

53:                                               ; preds = %36
  %54 = load i32, i32* %10, align 4
  %55 = icmp sge i32 %54, 300
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 6
  store i32 %59, i32* %57, align 4
  br label %64

60:                                               ; preds = %53
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 3
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %66 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %67 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %70 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %73 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lo_measure_feedthrough(%struct.b43_wldev* %65, i32 %68, i32 %71, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %64, %36
  %77 = load i32, i32* %10, align 4
  %78 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 3
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %121, %76
  %81 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp sle i32 %86, 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @B43_WARN_ON(i32 %91)
  %93 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 4
  %94 = call i32 @memcpy(%struct.b43_loctl* %12, %struct.b43_loctl* %93, i32 16)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %96 = call i32 @lo_probe_possible_loctls(%struct.b43_wldev* %95, %struct.b43_loctl* %12, %struct.b43_lo_g_statemachine* %9)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %88
  br label %125

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %12, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 4
  %104 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %12, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 4
  %111 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %125

115:                                              ; preds = %107, %100
  %116 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 4
  %117 = call i32 @memcpy(%struct.b43_loctl* %116, %struct.b43_loctl* %12, i32 16)
  %118 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %123, 24
  br i1 %124, label %80, label %125

125:                                              ; preds = %121, %114, %99
  %126 = load %struct.b43_loctl*, %struct.b43_loctl** %5, align 8
  %127 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 4
  %128 = call i32 @memcpy(%struct.b43_loctl* %126, %struct.b43_loctl* %127, i32 16)
  %129 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %130 = call i64 @has_loopback_gain(%struct.b43_phy* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %170

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 4500
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 6
  store i32 %139, i32* %137, align 4
  br label %149

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 1500
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 3
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %136
  %150 = load i32, i32* %14, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp sle i32 %154, 1500
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 1
  store i32 1, i32* %157, align 4
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %162

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 1
  store i32 2, i32* %161, align 4
  br label %162

162:                                              ; preds = %160, %156
  br label %169

163:                                              ; preds = %149
  %164 = load i32, i32* %14, align 4
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %9, i32 0, i32 1
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %166, %163
  br label %169

169:                                              ; preds = %168, %162
  br label %170

170:                                              ; preds = %169, %125
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %175 = call i64 @has_loopback_gain(%struct.b43_phy* %174)
  %176 = call i32 @lo_measure_gain_values(%struct.b43_wldev* %171, i32 %173, i64 %175)
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %36, label %182

182:                                              ; preds = %177
  ret void
}

declare dso_local i64 @has_loopback_gain(%struct.b43_phy*) #1

declare dso_local i32 @memcpy(%struct.b43_loctl*, %struct.b43_loctl*, i32) #1

declare dso_local i32 @b43_lo_write(%struct.b43_wldev*, %struct.b43_loctl*) #1

declare dso_local i32 @lo_measure_feedthrough(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @lo_probe_possible_loctls(%struct.b43_wldev*, %struct.b43_loctl*, %struct.b43_lo_g_statemachine*) #1

declare dso_local i32 @lo_measure_gain_values(%struct.b43_wldev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
