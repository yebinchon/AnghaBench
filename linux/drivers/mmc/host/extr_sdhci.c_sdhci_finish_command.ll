; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_finish_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_finish_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64, i64, %struct.mmc_command*, i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, %struct.TYPE_3__*, i64, i32* }
%struct.TYPE_3__ = type { %struct.mmc_command*, %struct.mmc_command*, i64 }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SDHCI_RESPONSE = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Cannot wait for busy signal when also doing a data transfer\00", align 1
@SDHCI_QUIRK_NO_BUSY_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_finish_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_finish_command(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %4, i32 0, i32 5
  %6 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  store %struct.mmc_command* %6, %struct.mmc_command** %3, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %7, i32 0, i32 5
  store %struct.mmc_command* null, %struct.mmc_command** %8, align 8
  %9 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MMC_RSP_136, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %24 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %25 = call i32 @sdhci_read_rsp_136(%struct.sdhci_host* %23, %struct.mmc_command* %24)
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %28 = load i32, i32* @SDHCI_RESPONSE, align 4
  %29 = call i32 @sdhci_readl(%struct.sdhci_host* %27, i32 %28)
  %30 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %22
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %44 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.mmc_command*, %struct.mmc_command** %47, align 8
  %49 = icmp eq %struct.mmc_command* %43, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @mmc_command_done(i32 %53, %struct.TYPE_3__* %56)
  br label %58

58:                                               ; preds = %50, %42, %35
  %59 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MMC_RSP_BUSY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %58
  %66 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %67 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @DBG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %87

72:                                               ; preds = %65
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %74 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SDHCI_QUIRK_NO_BUSY_IRQ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %81 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %82 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %81, i32 0, i32 3
  %83 = load %struct.mmc_command*, %struct.mmc_command** %82, align 8
  %84 = icmp eq %struct.mmc_command* %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %129

86:                                               ; preds = %79, %72
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %58
  %89 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %90 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %91 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load %struct.mmc_command*, %struct.mmc_command** %93, align 8
  %95 = icmp eq %struct.mmc_command* %89, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %98 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load %struct.mmc_command*, %struct.mmc_command** %101, align 8
  %103 = call i32 @sdhci_send_command(%struct.sdhci_host* %97, %struct.mmc_command* %102)
  br label %129

104:                                              ; preds = %88
  %105 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %106 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %111 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %116 = call i32 @sdhci_finish_data(%struct.sdhci_host* %115)
  br label %117

117:                                              ; preds = %114, %109, %104
  %118 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %119 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %124 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %125 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = call i32 @__sdhci_finish_mrq(%struct.sdhci_host* %123, %struct.TYPE_3__* %126)
  br label %128

128:                                              ; preds = %122, %117
  br label %129

129:                                              ; preds = %85, %128, %96
  ret void
}

declare dso_local i32 @sdhci_read_rsp_136(%struct.sdhci_host*, %struct.mmc_command*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mmc_command_done(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @sdhci_send_command(%struct.sdhci_host*, %struct.mmc_command*) #1

declare dso_local i32 @sdhci_finish_data(%struct.sdhci_host*) #1

declare dso_local i32 @__sdhci_finish_mrq(%struct.sdhci_host*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
