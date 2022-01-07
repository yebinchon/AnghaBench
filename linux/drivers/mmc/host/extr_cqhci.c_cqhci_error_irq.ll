; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_error_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_error_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32, %struct.cqhci_slot*, i64, i32 }
%struct.cqhci_slot = type { i64, i8* }

@CQHCI_TERRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"%s: cqhci: error IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"%s: cqhci: error when idle. IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\0A\00", align 1
@NUM_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32, i32, i32)* @cqhci_error_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_error_irq(%struct.mmc_host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cqhci_host*, align 8
  %10 = alloca %struct.cqhci_slot*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 0
  %15 = load %struct.cqhci_host*, %struct.cqhci_host** %14, align 8
  store %struct.cqhci_host* %15, %struct.cqhci_host** %9, align 8
  %16 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %17 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %20 = load i32, i32* @CQHCI_TERRI, align 4
  %21 = call i32 @cqhci_readl(%struct.cqhci_host* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %23 = call i32 @mmc_hostname(%struct.mmc_host* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %30 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %143

34:                                               ; preds = %4
  %35 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %36 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %41 = call i32 @mmc_hostname(%struct.mmc_host* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  br label %143

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @CQHCI_TERRI_C_VALID(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @CQHCI_TERRI_C_TASK(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %55 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %54, i32 0, i32 1
  %56 = load %struct.cqhci_slot*, %struct.cqhci_slot** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %56, i64 %58
  store %struct.cqhci_slot* %59, %struct.cqhci_slot** %10, align 8
  %60 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %61 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %51
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i8* @cqhci_error_flags(i32 %65, i32 %66)
  %68 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %69 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %71 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %72 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @cqhci_recovery_needed(%struct.mmc_host* %70, i64 %73, i32 1)
  br label %75

75:                                               ; preds = %64, %51
  br label %76

76:                                               ; preds = %75, %47
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @CQHCI_TERRI_D_VALID(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @CQHCI_TERRI_D_TASK(i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %84 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %83, i32 0, i32 1
  %85 = load %struct.cqhci_slot*, %struct.cqhci_slot** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %85, i64 %87
  store %struct.cqhci_slot* %88, %struct.cqhci_slot** %10, align 8
  %89 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %90 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %80
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i8* @cqhci_error_flags(i32 %94, i32 %95)
  %97 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %98 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %100 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %101 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @cqhci_recovery_needed(%struct.mmc_host* %99, i64 %102, i32 1)
  br label %104

104:                                              ; preds = %93, %80
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %107 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %105
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %138, %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @NUM_SLOTS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %111
  %116 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %117 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %116, i32 0, i32 1
  %118 = load %struct.cqhci_slot*, %struct.cqhci_slot** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %118, i64 %120
  store %struct.cqhci_slot* %121, %struct.cqhci_slot** %10, align 8
  %122 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %123 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %115
  br label %138

127:                                              ; preds = %115
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i8* @cqhci_error_flags(i32 %128, i32 %129)
  %131 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %132 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %134 = load %struct.cqhci_slot*, %struct.cqhci_slot** %10, align 8
  %135 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @cqhci_recovery_needed(%struct.mmc_host* %133, i64 %136, i32 1)
  br label %141

138:                                              ; preds = %126
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %111

141:                                              ; preds = %127, %111
  br label %142

142:                                              ; preds = %141, %105
  br label %143

143:                                              ; preds = %142, %39, %33
  %144 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  %145 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock(i32* %145)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @CQHCI_TERRI_C_VALID(i32) #1

declare dso_local i32 @CQHCI_TERRI_C_TASK(i32) #1

declare dso_local i8* @cqhci_error_flags(i32, i32) #1

declare dso_local i32 @cqhci_recovery_needed(%struct.mmc_host*, i64, i32) #1

declare dso_local i64 @CQHCI_TERRI_D_VALID(i32) #1

declare dso_local i32 @CQHCI_TERRI_D_TASK(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
