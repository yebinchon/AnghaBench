; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_my3126.c_my3126_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_my3126.c_my3126_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i32, i32, i32, i32, i32* }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_STAT1_LSTATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_CONTROL = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_MSTAT_SNAP = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_COUNTER_1_LOW = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_COUNTER_33_LOW = common dso_local global i32 0, align 4
@A_ELMER0_GPO = common dso_local global i32 0, align 4
@cphy_cause_link_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @my3126_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my3126_interrupt_handler(%struct.cphy* %0) #0 {
  %2 = alloca %struct.cphy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.cphy* %0, %struct.cphy** %2, align 8
  %8 = load %struct.cphy*, %struct.cphy** %2, align 8
  %9 = getelementptr inbounds %struct.cphy, %struct.cphy* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load %struct.cphy*, %struct.cphy** %2, align 8
  %12 = getelementptr inbounds %struct.cphy, %struct.cphy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 50
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load %struct.cphy*, %struct.cphy** %2, align 8
  %17 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %18 = load i32, i32* @MDIO_STAT1, align 4
  %19 = call i32 @cphy_mdio_read(%struct.cphy* %16, i32 %17, i32 %18, i32* %3)
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.cphy*, %struct.cphy** %2, align 8
  %22 = getelementptr inbounds %struct.cphy, %struct.cphy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = xor i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MDIO_STAT1_LSTATUS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @t1_link_changed(i32* %31, i32 0)
  br label %33

33:                                               ; preds = %30, %15
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.cphy*, %struct.cphy** %2, align 8
  %36 = getelementptr inbounds %struct.cphy, %struct.cphy* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cphy*, %struct.cphy** %2, align 8
  %38 = getelementptr inbounds %struct.cphy, %struct.cphy* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %1
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_CONTROL, align 4
  %42 = call i32 @OFFSET(i32 %41)
  %43 = load i32, i32* @SUNI1x10GEXP_BITMSK_MSTAT_SNAP, align 4
  %44 = call i32 @t1_tpi_write(i32* %40, i32 %42, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_COUNTER_1_LOW, align 4
  %47 = call i32 @OFFSET(i32 %46)
  %48 = call i32 @t1_tpi_read(i32* %45, i32 %47, i32* %6)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_COUNTER_33_LOW, align 4
  %51 = call i32 @OFFSET(i32 %50)
  %52 = call i32 @t1_tpi_read(i32* %49, i32 %51, i32* %3)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @A_ELMER0_GPO, align 4
  %58 = call i32 @t1_tpi_read(i32* %56, i32 %57, i32* %3)
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.cphy*, %struct.cphy** %2, align 8
  %61 = getelementptr inbounds %struct.cphy, %struct.cphy* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 256
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %39
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, 524288
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = load %struct.cphy*, %struct.cphy** %2, align 8
  %71 = getelementptr inbounds %struct.cphy, %struct.cphy* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.cphy*, %struct.cphy** %2, align 8
  %77 = getelementptr inbounds %struct.cphy, %struct.cphy* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %75, %69, %65, %39
  %81 = load i32*, i32** %7, align 8
  %82 = call i64 @is_T2(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, 512
  store i32 %86, i32* %3, align 4
  br label %95

87:                                               ; preds = %80
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @t1_is_T1B(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, 1048576
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct.cphy*, %struct.cphy** %2, align 8
  %97 = getelementptr inbounds %struct.cphy, %struct.cphy* %96, i32 0, i32 4
  store i32 0, i32* %97, align 8
  br label %116

98:                                               ; preds = %75
  %99 = load i32*, i32** %7, align 8
  %100 = call i64 @is_T2(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, -513
  store i32 %104, i32* %3, align 4
  br label %113

105:                                              ; preds = %98
  %106 = load i32*, i32** %7, align 8
  %107 = call i64 @t1_is_T1B(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %3, align 4
  %111 = and i32 %110, -1048577
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %102
  %114 = load %struct.cphy*, %struct.cphy** %2, align 8
  %115 = getelementptr inbounds %struct.cphy, %struct.cphy* %114, i32 0, i32 4
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %95
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @A_ELMER0_GPO, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @t1_tpi_write(i32* %117, i32 %118, i32 %119)
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.cphy*, %struct.cphy** %2, align 8
  %123 = getelementptr inbounds %struct.cphy, %struct.cphy* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.cphy*, %struct.cphy** %2, align 8
  %126 = getelementptr inbounds %struct.cphy, %struct.cphy* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.cphy*, %struct.cphy** %2, align 8
  %128 = getelementptr inbounds %struct.cphy, %struct.cphy* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @cphy_cause_link_change, align 4
  ret i32 %131
}

declare dso_local i32 @cphy_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t1_link_changed(i32*, i32) #1

declare dso_local i32 @t1_tpi_write(i32*, i32, i32) #1

declare dso_local i32 @OFFSET(i32) #1

declare dso_local i32 @t1_tpi_read(i32*, i32, i32*) #1

declare dso_local i64 @is_T2(i32*) #1

declare dso_local i64 @t1_is_T1B(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
