; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32, i32, i64, %struct.TYPE_4__*, %struct.mmc_command*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.mmc_command* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }
%struct.mmc_data = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: CMD%d, argument 0x%08x\0A\00", align 1
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@AUTO_CMD23 = common dso_local global i32 0, align 4
@ACEN_ACMD23 = common dso_local global i32 0, align 4
@SDMASA = common dso_local global i32 0, align 4
@DP_SELECT = common dso_local global i32 0, align 4
@MSBS = common dso_local global i32 0, align 4
@BCE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DDIR = common dso_local global i32 0, align 4
@DMAE = common dso_local global i32 0, align 4
@ARG = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, %struct.mmc_command*, %struct.mmc_data*)* @omap_hsmmc_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_start_command(%struct.omap_hsmmc_host* %0, %struct.mmc_command* %1, %struct.mmc_data* %2) #0 {
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mmc_dev(i32 %12)
  %14 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mmc_hostname(i32 %16)
  %18 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_vdbg(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %26, i32 0, i32 6
  store %struct.mmc_command* %25, %struct.mmc_command** %27, align 8
  %28 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %29 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %30 = call i32 @omap_hsmmc_enable_irq(%struct.omap_hsmmc_host* %28, %struct.mmc_command* %29)
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %3
  %40 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MMC_RSP_136, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MMC_RSP_BUSY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  store i32 3, i32* %8, align 4
  %55 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %56 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %58

57:                                               ; preds = %47
  store i32 2, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %3
  %61 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %62 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %63 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %62, i32 0, i32 5
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.mmc_command*, %struct.mmc_command** %65, align 8
  %67 = icmp eq %struct.mmc_command* %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 3, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 24
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 16
  %76 = or i32 %73, %75
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 22
  %79 = or i32 %76, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %81 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AUTO_CMD23, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %69
  %87 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @mmc_op_multi(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %94 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %93, i32 0, i32 5
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = icmp ne %struct.TYPE_3__* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %92
  %100 = load i32, i32* @ACEN_ACMD23, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %104 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SDMASA, align 4
  %107 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %108 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %107, i32 0, i32 5
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @OMAP_HSMMC_WRITE(i32 %105, i32 %106, i32 %113)
  br label %115

115:                                              ; preds = %99, %92, %86, %69
  %116 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %117 = icmp ne %struct.mmc_data* %116, null
  br i1 %117, label %118, label %142

118:                                              ; preds = %115
  %119 = load i32, i32* @DP_SELECT, align 4
  %120 = load i32, i32* @MSBS, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @BCE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %127 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MMC_DATA_READ, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %118
  %133 = load i32, i32* @DDIR, align 4
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  br label %141

136:                                              ; preds = %118
  %137 = load i32, i32* @DDIR, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %136, %132
  br label %142

142:                                              ; preds = %141, %115
  %143 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %144 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @DMAE, align 4
  %149 = load i32, i32* %7, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %153 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %152, i32 0, i32 2
  store i32 1, i32* %153, align 8
  %154 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %155 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ARG, align 4
  %158 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %159 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @OMAP_HSMMC_WRITE(i32 %156, i32 %157, i32 %160)
  %162 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %163 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @CMD, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @OMAP_HSMMC_WRITE(i32 %164, i32 %165, i32 %166)
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @omap_hsmmc_enable_irq(%struct.omap_hsmmc_host*, %struct.mmc_command*) #1

declare dso_local i64 @mmc_op_multi(i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
