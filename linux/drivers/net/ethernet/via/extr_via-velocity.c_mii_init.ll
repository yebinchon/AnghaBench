; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i32, i32, i32 }

@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@VELOCITY_DUPLEX_FULL = common dso_local global i32 0, align 4
@TCSR_ECHODIS = common dso_local global i32 0, align 4
@MII_SREVISION = common dso_local global i32 0, align 4
@PLED_LALBE = common dso_local global i32 0, align 4
@MII_TPISTATUS = common dso_local global i32 0, align 4
@PSCR_ACRSTX = common dso_local global i32 0, align 4
@MII_REG_PSCR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.velocity_info*, i32)* @mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_init(%struct.velocity_info* %0, i32 %1) #0 {
  %3 = alloca %struct.velocity_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.velocity_info* %0, %struct.velocity_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %7 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @PHYID_GET_PHY_ID(i32 %8)
  switch i32 %9, label %127 [
    i32 132, label %10
    i32 133, label %46
    i32 129, label %82
    i32 128, label %82
    i32 131, label %112
    i32 130, label %112
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %12 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MII_ADVERTISE, align 4
  %15 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %16 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MII_REG_BITS_ON(i32 %13, i32 %14, i32 %17)
  %19 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %20 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VELOCITY_DUPLEX_FULL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %10
  %26 = load i32, i32* @TCSR_ECHODIS, align 4
  %27 = load i32, i32* @MII_SREVISION, align 4
  %28 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %29 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MII_REG_BITS_ON(i32 %26, i32 %27, i32 %30)
  br label %39

32:                                               ; preds = %10
  %33 = load i32, i32* @TCSR_ECHODIS, align 4
  %34 = load i32, i32* @MII_SREVISION, align 4
  %35 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %36 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MII_REG_BITS_OFF(i32 %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* @PLED_LALBE, align 4
  %41 = load i32, i32* @MII_TPISTATUS, align 4
  %42 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %43 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MII_REG_BITS_ON(i32 %40, i32 %41, i32 %44)
  br label %128

46:                                               ; preds = %2
  %47 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %48 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MII_ADVERTISE, align 4
  %51 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %52 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MII_REG_BITS_OFF(i32 %49, i32 %50, i32 %53)
  %55 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %56 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @VELOCITY_DUPLEX_FULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load i32, i32* @TCSR_ECHODIS, align 4
  %63 = load i32, i32* @MII_SREVISION, align 4
  %64 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %65 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @MII_REG_BITS_ON(i32 %62, i32 %63, i32 %66)
  br label %75

68:                                               ; preds = %46
  %69 = load i32, i32* @TCSR_ECHODIS, align 4
  %70 = load i32, i32* @MII_SREVISION, align 4
  %71 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %72 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MII_REG_BITS_OFF(i32 %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* @PLED_LALBE, align 4
  %77 = load i32, i32* @MII_TPISTATUS, align 4
  %78 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %79 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @MII_REG_BITS_ON(i32 %76, i32 %77, i32 %80)
  br label %128

82:                                               ; preds = %2, %2
  %83 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %84 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MII_ADVERTISE, align 4
  %87 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %88 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @MII_REG_BITS_ON(i32 %85, i32 %86, i32 %89)
  %91 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %92 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @VELOCITY_DUPLEX_FULL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %82
  %98 = load i32, i32* @TCSR_ECHODIS, align 4
  %99 = load i32, i32* @MII_SREVISION, align 4
  %100 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %101 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @MII_REG_BITS_ON(i32 %98, i32 %99, i32 %102)
  br label %111

104:                                              ; preds = %82
  %105 = load i32, i32* @TCSR_ECHODIS, align 4
  %106 = load i32, i32* @MII_SREVISION, align 4
  %107 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %108 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @MII_REG_BITS_OFF(i32 %105, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  br label %128

112:                                              ; preds = %2, %2
  %113 = load i32, i32* @PSCR_ACRSTX, align 4
  %114 = load i32, i32* @MII_REG_PSCR, align 4
  %115 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %116 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @MII_REG_BITS_ON(i32 %113, i32 %114, i32 %117)
  %119 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %120 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @MII_ADVERTISE, align 4
  %123 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %124 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @MII_REG_BITS_ON(i32 %121, i32 %122, i32 %125)
  br label %128

127:                                              ; preds = %2
  br label %128

128:                                              ; preds = %127, %112, %111, %75, %39
  %129 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %130 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MII_BMCR, align 4
  %133 = call i32 @velocity_mii_read(i32 %131, i32 %132, i32* %5)
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @BMCR_ISOLATE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %128
  %139 = load i32, i32* @BMCR_ISOLATE, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %5, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %144 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MII_BMCR, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @velocity_mii_write(i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %138, %128
  ret void
}

declare dso_local i32 @PHYID_GET_PHY_ID(i32) #1

declare dso_local i32 @MII_REG_BITS_ON(i32, i32, i32) #1

declare dso_local i32 @MII_REG_BITS_OFF(i32, i32, i32) #1

declare dso_local i32 @velocity_mii_read(i32, i32, i32*) #1

declare dso_local i32 @velocity_mii_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
