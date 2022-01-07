; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@BNAD_CF_MSIX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%d MSI-X vectors allocated < %d requested\0A\00", align 1
@BNAD_MAILBOX_MSIX_VECTORS = common dso_local global i32 0, align 4
@BNAD_NUM_TXQ = common dso_local global i32 0, align 4
@BNAD_NUM_RXP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"MSI-X enable failed - operating in INTx mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*)* @bnad_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_enable_msix(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %6 = load %struct.bnad*, %struct.bnad** %2, align 8
  %7 = getelementptr inbounds %struct.bnad, %struct.bnad* %6, i32 0, i32 2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.bnad*, %struct.bnad** %2, align 8
  %11 = getelementptr inbounds %struct.bnad, %struct.bnad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BNAD_CF_MSIX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.bnad*, %struct.bnad** %2, align 8
  %18 = getelementptr inbounds %struct.bnad, %struct.bnad* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %165

21:                                               ; preds = %1
  %22 = load %struct.bnad*, %struct.bnad** %2, align 8
  %23 = getelementptr inbounds %struct.bnad, %struct.bnad* %22, i32 0, i32 2
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.bnad*, %struct.bnad** %2, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %165

31:                                               ; preds = %21
  %32 = load %struct.bnad*, %struct.bnad** %2, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.TYPE_8__* @kcalloc(i32 %34, i32 4, i32 %35)
  %37 = load %struct.bnad*, %struct.bnad** %2, align 8
  %38 = getelementptr inbounds %struct.bnad, %struct.bnad* %37, i32 0, i32 3
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %38, align 8
  %39 = load %struct.bnad*, %struct.bnad** %2, align 8
  %40 = getelementptr inbounds %struct.bnad, %struct.bnad* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %135

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.bnad*, %struct.bnad** %2, align 8
  %48 = getelementptr inbounds %struct.bnad, %struct.bnad* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.bnad*, %struct.bnad** %2, align 8
  %54 = getelementptr inbounds %struct.bnad, %struct.bnad* %53, i32 0, i32 3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.bnad*, %struct.bnad** %2, align 8
  %65 = getelementptr inbounds %struct.bnad, %struct.bnad* %64, i32 0, i32 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load %struct.bnad*, %struct.bnad** %2, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load %struct.bnad*, %struct.bnad** %2, align 8
  %71 = getelementptr inbounds %struct.bnad, %struct.bnad* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_enable_msix_range(%struct.TYPE_7__* %66, %struct.TYPE_8__* %69, i32 1, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %135

77:                                               ; preds = %63
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.bnad*, %struct.bnad** %2, align 8
  %80 = getelementptr inbounds %struct.bnad, %struct.bnad* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %129

83:                                               ; preds = %77
  %84 = load %struct.bnad*, %struct.bnad** %2, align 8
  %85 = getelementptr inbounds %struct.bnad, %struct.bnad* %84, i32 0, i32 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.bnad*, %struct.bnad** %2, align 8
  %90 = getelementptr inbounds %struct.bnad, %struct.bnad* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32*, i8*, ...) @dev_warn(i32* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.bnad*, %struct.bnad** %2, align 8
  %94 = getelementptr inbounds %struct.bnad, %struct.bnad* %93, i32 0, i32 2
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load %struct.bnad*, %struct.bnad** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %100 = sub nsw i32 %98, %99
  %101 = sdiv i32 %100, 2
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sdiv i32 %104, 2
  %106 = call i32 @bnad_q_num_adjust(%struct.bnad* %97, i32 %101, i32 %105)
  %107 = load %struct.bnad*, %struct.bnad** %2, align 8
  %108 = getelementptr inbounds %struct.bnad, %struct.bnad* %107, i32 0, i32 2
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load i32, i32* @BNAD_NUM_TXQ, align 4
  %112 = load i32, i32* @BNAD_NUM_RXP, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.bnad*, %struct.bnad** %2, align 8
  %117 = getelementptr inbounds %struct.bnad, %struct.bnad* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.bnad*, %struct.bnad** %2, align 8
  %119 = getelementptr inbounds %struct.bnad, %struct.bnad* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %83
  %124 = load %struct.bnad*, %struct.bnad** %2, align 8
  %125 = getelementptr inbounds %struct.bnad, %struct.bnad* %124, i32 0, i32 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = call i32 @pci_disable_msix(%struct.TYPE_7__* %126)
  br label %135

128:                                              ; preds = %83
  br label %129

129:                                              ; preds = %128, %77
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.bnad*, %struct.bnad** %2, align 8
  %132 = getelementptr inbounds %struct.bnad, %struct.bnad* %131, i32 0, i32 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = call i32 @pci_intx(%struct.TYPE_7__* %133, i32 0)
  br label %165

135:                                              ; preds = %123, %76, %43
  %136 = load %struct.bnad*, %struct.bnad** %2, align 8
  %137 = getelementptr inbounds %struct.bnad, %struct.bnad* %136, i32 0, i32 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = call i32 (i32*, i8*, ...) @dev_warn(i32* %139, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.bnad*, %struct.bnad** %2, align 8
  %142 = getelementptr inbounds %struct.bnad, %struct.bnad* %141, i32 0, i32 3
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = call i32 @kfree(%struct.TYPE_8__* %143)
  %145 = load %struct.bnad*, %struct.bnad** %2, align 8
  %146 = getelementptr inbounds %struct.bnad, %struct.bnad* %145, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %146, align 8
  %147 = load %struct.bnad*, %struct.bnad** %2, align 8
  %148 = getelementptr inbounds %struct.bnad, %struct.bnad* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load %struct.bnad*, %struct.bnad** %2, align 8
  %150 = getelementptr inbounds %struct.bnad, %struct.bnad* %149, i32 0, i32 2
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @spin_lock_irqsave(i32* %150, i64 %151)
  %153 = load i32, i32* @BNAD_CF_MSIX, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.bnad*, %struct.bnad** %2, align 8
  %156 = getelementptr inbounds %struct.bnad, %struct.bnad* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.bnad*, %struct.bnad** %2, align 8
  %160 = call i32 @bnad_q_num_init(%struct.bnad* %159)
  %161 = load %struct.bnad*, %struct.bnad** %2, align 8
  %162 = getelementptr inbounds %struct.bnad, %struct.bnad* %161, i32 0, i32 2
  %163 = load i64, i64* %5, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  br label %165

165:                                              ; preds = %135, %130, %30, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_8__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @bnad_q_num_adjust(%struct.bnad*, i32, i32) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_intx(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @bnad_q_num_init(%struct.bnad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
