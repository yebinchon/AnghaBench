; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_pci_o2_fujin2_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_pci_o2_fujin2_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { i32 }

@O2_SD_DEV_CTRL = common dso_local global i32 0, align 4
@O2_SD_MISC_REG5 = common dso_local global i32 0, align 4
@O2_SD_TEST_REG = common dso_local global i32 0, align 4
@O2_SD_DELAY_CTRL = common dso_local global i32 0, align 4
@O2_SD_LD0_CTRL = common dso_local global i32 0, align 4
@O2_SD_CAP_REG0 = common dso_local global i32 0, align 4
@O2_SD_TUNING_CTRL = common dso_local global i32 0, align 4
@O2_SD_UHS2_L1_CTRL = common dso_local global i32 0, align 4
@O2_SD_FUNC_REG3 = common dso_local global i32 0, align 4
@O2_SD_CAPS = common dso_local global i32 0, align 4
@O2_SD_MISC_CTRL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_pci_chip*)* @sdhci_pci_o2_fujin2_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_pci_o2_fujin2_pci_init(%struct.sdhci_pci_chip* %0) #0 {
  %2 = alloca %struct.sdhci_pci_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %2, align 8
  %5 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %6 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @O2_SD_DEV_CTRL, align 4
  %9 = call i32 @pci_read_config_dword(i32 %7, i32 %8, i32* %3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %192

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, -28673
  store i32 %15, i32* %3, align 4
  %16 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %17 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @O2_SD_DEV_CTRL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_write_config_dword(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %23 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @O2_SD_MISC_REG5, align 4
  %26 = call i32 @pci_read_config_dword(i32 %24, i32 %25, i32* %3)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %192

30:                                               ; preds = %13
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, -526337
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, 1024
  store i32 %34, i32* %3, align 4
  %35 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %36 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @O2_SD_MISC_REG5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @pci_write_config_dword(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %42 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @O2_SD_TEST_REG, align 4
  %45 = call i32 @pci_read_config_dword(i32 %43, i32 %44, i32* %3)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %192

49:                                               ; preds = %30
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, 16
  store i32 %51, i32* %3, align 4
  %52 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %53 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @O2_SD_TEST_REG, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @pci_write_config_dword(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %59 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @O2_SD_DELAY_CTRL, align 4
  %62 = call i32 @pci_write_config_dword(i32 %60, i32 %61, i32 9362)
  %63 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %64 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @O2_SD_LD0_CTRL, align 4
  %67 = call i32 @pci_read_config_dword(i32 %65, i32 %66, i32* %3)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  br label %192

71:                                               ; preds = %49
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, -12289
  store i32 %73, i32* %3, align 4
  %74 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %75 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @O2_SD_LD0_CTRL, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @pci_write_config_dword(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %81 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @O2_SD_CAP_REG0, align 4
  %84 = call i32 @pci_read_config_dword(i32 %82, i32 %83, i32* %3)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %192

88:                                               ; preds = %71
  %89 = load i32, i32* %3, align 4
  %90 = and i32 %89, -511
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, 204
  store i32 %92, i32* %3, align 4
  %93 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %94 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @O2_SD_CAP_REG0, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @pci_write_config_dword(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %100 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @O2_SD_TUNING_CTRL, align 4
  %103 = call i32 @pci_read_config_dword(i32 %101, i32 %102, i32* %3)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  br label %192

107:                                              ; preds = %88
  %108 = load i32, i32* %3, align 4
  %109 = and i32 %108, -256
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, 102
  store i32 %111, i32* %3, align 4
  %112 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %113 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @O2_SD_TUNING_CTRL, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @pci_write_config_dword(i32 %114, i32 %115, i32 %116)
  %118 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %119 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @O2_SD_UHS2_L1_CTRL, align 4
  %122 = call i32 @pci_read_config_dword(i32 %120, i32 %121, i32* %3)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %107
  br label %192

126:                                              ; preds = %107
  %127 = load i32, i32* %3, align 4
  %128 = and i32 %127, -253
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %129, 132
  store i32 %130, i32* %3, align 4
  %131 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %132 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @O2_SD_UHS2_L1_CTRL, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @pci_write_config_dword(i32 %133, i32 %134, i32 %135)
  %137 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %138 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @O2_SD_FUNC_REG3, align 4
  %141 = call i32 @pci_read_config_dword(i32 %139, i32 %140, i32* %3)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %126
  br label %192

145:                                              ; preds = %126
  %146 = load i32, i32* %3, align 4
  %147 = and i32 %146, -1075838977
  store i32 %147, i32* %3, align 4
  %148 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %149 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @O2_SD_FUNC_REG3, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @pci_write_config_dword(i32 %150, i32 %151, i32 %152)
  %154 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %155 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @O2_SD_CAPS, align 4
  %158 = call i32 @pci_read_config_dword(i32 %156, i32 %157, i32* %3)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %145
  br label %192

162:                                              ; preds = %145
  %163 = load i32, i32* %3, align 4
  %164 = and i32 %163, 268435455
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* %3, align 4
  %166 = or i32 %165, 805306368
  store i32 %166, i32* %3, align 4
  %167 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %168 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @O2_SD_CAPS, align 4
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @pci_write_config_dword(i32 %169, i32 %170, i32 %171)
  %173 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %174 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @O2_SD_MISC_CTRL4, align 4
  %177 = call i32 @pci_read_config_dword(i32 %175, i32 %176, i32* %3)
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %162
  br label %192

181:                                              ; preds = %162
  %182 = load i32, i32* %3, align 4
  %183 = and i32 %182, -983041
  store i32 %183, i32* %3, align 4
  %184 = load i32, i32* %3, align 4
  %185 = or i32 %184, 524288
  store i32 %185, i32* %3, align 4
  %186 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %187 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @O2_SD_MISC_CTRL4, align 4
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @pci_write_config_dword(i32 %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %181, %180, %161, %144, %125, %106, %87, %70, %48, %29, %12
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
