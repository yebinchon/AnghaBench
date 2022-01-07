; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_swphy.c_swphy_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_swphy.c_swphy_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.fixed_phy_status = type { i64, i64, i64, i64, i32 }

@BMSR_ANEGCAPABLE = common dso_local global i32 0, align 4
@MII_REGS_NUM = common dso_local global i32 0, align 4
@SWMII_DUPLEX_FULL = common dso_local global i32 0, align 4
@SWMII_DUPLEX_HALF = common dso_local global i32 0, align 4
@speed = common dso_local global %struct.TYPE_3__* null, align 8
@duplex = common dso_local global %struct.TYPE_4__* null, align 8
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swphy_read_reg(i32 %0, %struct.fixed_phy_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fixed_phy_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fixed_phy_status* %1, %struct.fixed_phy_status** %5, align 8
  %12 = load i32, i32* @BMSR_ANEGCAPABLE, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MII_REGS_NUM, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %142

17:                                               ; preds = %2
  %18 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %5, align 8
  %19 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @swphy_decode_speed(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %142

28:                                               ; preds = %17
  %29 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %5, align 8
  %30 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @SWMII_DUPLEX_FULL, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SWMII_DUPLEX_HALF, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @speed, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @duplex, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %44, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @speed, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @duplex, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %59, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %5, align 8
  %70 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %37
  %74 = load i32, i32* @BMSR_LSTATUS, align 4
  %75 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @speed, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @duplex, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %84, %90
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @speed, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @duplex, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %99, %105
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  %109 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %5, align 8
  %110 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %73
  %114 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %73
  %118 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %5, align 8
  %119 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %122, %117
  br label %127

127:                                              ; preds = %126, %37
  %128 = load i32, i32* %4, align 4
  switch i32 %128, label %141 [
    i32 136, label %129
    i32 135, label %131
    i32 130, label %133
    i32 129, label %133
    i32 133, label %134
    i32 128, label %136
    i32 134, label %138
    i32 132, label %140
    i32 131, label %140
  ]

129:                                              ; preds = %127
  %130 = load i32, i32* @BMCR_ANENABLE, align 4
  store i32 %130, i32* %3, align 4
  br label %142

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %142

133:                                              ; preds = %127, %127
  store i32 0, i32* %3, align 4
  br label %142

134:                                              ; preds = %127
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %3, align 4
  br label %142

136:                                              ; preds = %127
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %3, align 4
  br label %142

138:                                              ; preds = %127
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  br label %142

140:                                              ; preds = %127, %127
  store i32 -1, i32* %3, align 4
  br label %142

141:                                              ; preds = %127
  store i32 65535, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %140, %138, %136, %134, %133, %131, %129, %27, %16
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @swphy_decode_speed(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
