; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-arasan.c_arasan_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-arasan.c_arasan_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@IPAD_CTRL1 = common dso_local global i32 0, align 4
@RETB_ENBL = common dso_local global i32 0, align 4
@PDB_ENBL = common dso_local global i32 0, align 4
@IPAD_CTRL2 = common dso_local global i32 0, align 4
@RTRIM_EN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IPAD_STS = common dso_local global i32 0, align 4
@CALDONE_MASK = common dso_local global i32 0, align 4
@IOREN_CTRL1 = common dso_local global i32 0, align 4
@REN_CMND = common dso_local global i32 0, align 4
@REN_STRB = common dso_local global i32 0, align 4
@IOPU_CTRL1 = common dso_local global i32 0, align 4
@PU_CMD = common dso_local global i32 0, align 4
@CMD_CTRL = common dso_local global i32 0, align 4
@PDB_CMND = common dso_local global i32 0, align 4
@IOREN_CTRL2 = common dso_local global i32 0, align 4
@REN_DATA = common dso_local global i32 0, align 4
@IOPU_CTRL2 = common dso_local global i32 0, align 4
@PU_DAT = common dso_local global i32 0, align 4
@DATA_CTRL = common dso_local global i32 0, align 4
@PDB_DATA = common dso_local global i32 0, align 4
@STRB_CTRL = common dso_local global i32 0, align 4
@PDB_STRB = common dso_local global i32 0, align 4
@CLK_CTRL = common dso_local global i32 0, align 4
@PDB_CLOCK = common dso_local global i32 0, align 4
@CLKBUF_SEL = common dso_local global i32 0, align 4
@MAX_CLK_BUF = common dso_local global i32 0, align 4
@LEGACY_MODE = common dso_local global i32 0, align 4
@MODE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @arasan_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arasan_phy_init(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = load i32, i32* @IPAD_CTRL1, align 4
  %8 = call i64 @arasan_phy_read(%struct.sdhci_host* %6, i32 %7, i32* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RETB_ENBL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PDB_ENBL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IPAD_CTRL1, align 4
  %18 = call i64 @arasan_phy_write(%struct.sdhci_host* %11, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %10
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %22 = load i32, i32* @IPAD_CTRL2, align 4
  %23 = call i64 @arasan_phy_read(%struct.sdhci_host* %21, i32 %22, i32* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RTRIM_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IPAD_CTRL2, align 4
  %31 = call i64 @arasan_phy_write(%struct.sdhci_host* %26, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25, %20, %10, %1
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %175

36:                                               ; preds = %25
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %38 = load i32, i32* @IPAD_STS, align 4
  %39 = load i32, i32* @CALDONE_MASK, align 4
  %40 = call i32 @arasan_phy_sts_poll(%struct.sdhci_host* %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %175

46:                                               ; preds = %36
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %48 = load i32, i32* @IOREN_CTRL1, align 4
  %49 = call i64 @arasan_phy_read(%struct.sdhci_host* %47, i32 %48, i32* %5)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %171, label %51

51:                                               ; preds = %46
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @REN_CMND, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @REN_STRB, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IOREN_CTRL1, align 4
  %59 = call i64 @arasan_phy_write(%struct.sdhci_host* %52, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %171, label %61

61:                                               ; preds = %51
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %63 = load i32, i32* @IOPU_CTRL1, align 4
  %64 = call i64 @arasan_phy_read(%struct.sdhci_host* %62, i32 %63, i32* %5)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %171, label %66

66:                                               ; preds = %61
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PU_CMD, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @IOPU_CTRL1, align 4
  %72 = call i64 @arasan_phy_write(%struct.sdhci_host* %67, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %171, label %74

74:                                               ; preds = %66
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %76 = load i32, i32* @CMD_CTRL, align 4
  %77 = call i64 @arasan_phy_read(%struct.sdhci_host* %75, i32 %76, i32* %5)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %171, label %79

79:                                               ; preds = %74
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @PDB_CMND, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @CMD_CTRL, align 4
  %85 = call i64 @arasan_phy_write(%struct.sdhci_host* %80, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %171, label %87

87:                                               ; preds = %79
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %89 = load i32, i32* @IOREN_CTRL2, align 4
  %90 = call i64 @arasan_phy_read(%struct.sdhci_host* %88, i32 %89, i32* %5)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %171, label %92

92:                                               ; preds = %87
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @REN_DATA, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IOREN_CTRL2, align 4
  %98 = call i64 @arasan_phy_write(%struct.sdhci_host* %93, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %171, label %100

100:                                              ; preds = %92
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %102 = load i32, i32* @IOPU_CTRL2, align 4
  %103 = call i64 @arasan_phy_read(%struct.sdhci_host* %101, i32 %102, i32* %5)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %171, label %105

105:                                              ; preds = %100
  %106 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @PU_DAT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @IOPU_CTRL2, align 4
  %111 = call i64 @arasan_phy_write(%struct.sdhci_host* %106, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %171, label %113

113:                                              ; preds = %105
  %114 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %115 = load i32, i32* @DATA_CTRL, align 4
  %116 = call i64 @arasan_phy_read(%struct.sdhci_host* %114, i32 %115, i32* %5)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %171, label %118

118:                                              ; preds = %113
  %119 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @PDB_DATA, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @DATA_CTRL, align 4
  %124 = call i64 @arasan_phy_write(%struct.sdhci_host* %119, i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %171, label %126

126:                                              ; preds = %118
  %127 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %128 = load i32, i32* @STRB_CTRL, align 4
  %129 = call i64 @arasan_phy_read(%struct.sdhci_host* %127, i32 %128, i32* %5)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %171, label %131

131:                                              ; preds = %126
  %132 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @PDB_STRB, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @STRB_CTRL, align 4
  %137 = call i64 @arasan_phy_write(%struct.sdhci_host* %132, i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %171, label %139

139:                                              ; preds = %131
  %140 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %141 = load i32, i32* @CLK_CTRL, align 4
  %142 = call i64 @arasan_phy_read(%struct.sdhci_host* %140, i32 %141, i32* %5)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %171, label %144

144:                                              ; preds = %139
  %145 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @PDB_CLOCK, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @CLK_CTRL, align 4
  %150 = call i64 @arasan_phy_write(%struct.sdhci_host* %145, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %171, label %152

152:                                              ; preds = %144
  %153 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %154 = load i32, i32* @CLKBUF_SEL, align 4
  %155 = call i64 @arasan_phy_read(%struct.sdhci_host* %153, i32 %154, i32* %5)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %152
  %158 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @MAX_CLK_BUF, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @CLKBUF_SEL, align 4
  %163 = call i64 @arasan_phy_write(%struct.sdhci_host* %158, i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %157
  %166 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %167 = load i32, i32* @LEGACY_MODE, align 4
  %168 = load i32, i32* @MODE_CTRL, align 4
  %169 = call i64 @arasan_phy_write(%struct.sdhci_host* %166, i32 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165, %157, %152, %144, %139, %131, %126, %118, %113, %105, %100, %92, %87, %79, %74, %66, %61, %51, %46
  %172 = load i32, i32* @EBUSY, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %175

174:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %171, %43, %33
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i64 @arasan_phy_read(%struct.sdhci_host*, i32, i32*) #1

declare dso_local i64 @arasan_phy_write(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @arasan_phy_sts_poll(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
