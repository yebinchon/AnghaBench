; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_cpureset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_cpureset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i64, i64, i32 }

@FST_FAMILY_TXU = common dso_local global i64 0, align 8
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4
@DBG_ASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error in reading interrupt line register\0A\00", align 1
@CNTRL_9054 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Error in writing interrupt line register\0A\00", align 1
@CNTRL_9052 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*)* @fst_cpureset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_cpureset(%struct.fst_card_info* %0) #0 {
  %2 = alloca %struct.fst_card_info*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %2, align 8
  %5 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %6 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FST_FAMILY_TXU, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %62

10:                                               ; preds = %1
  %11 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %12 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %15 = call i64 @pci_read_config_byte(i32 %13, i32 %14, i8* %3)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @DBG_ASS, align 4
  %19 = call i32 @dbg(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %22 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CNTRL_9054, align 8
  %25 = add nsw i64 %23, %24
  %26 = add nsw i64 %25, 2
  %27 = call i32 @outw(i32 17423, i64 %26)
  %28 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %29 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CNTRL_9054, align 8
  %32 = add nsw i64 %30, %31
  %33 = add nsw i64 %32, 2
  %34 = call i32 @outw(i32 1039, i64 %33)
  %35 = call i32 @usleep_range(i32 10, i32 20)
  %36 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %37 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CNTRL_9054, align 8
  %40 = add nsw i64 %38, %39
  %41 = add nsw i64 %40, 2
  %42 = call i32 @outw(i32 9231, i64 %41)
  %43 = call i32 @usleep_range(i32 10, i32 20)
  %44 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %45 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CNTRL_9054, align 8
  %48 = add nsw i64 %46, %47
  %49 = add nsw i64 %48, 2
  %50 = call i32 @outw(i32 1039, i64 %49)
  %51 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %52 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %55 = load i8, i8* %3, align 1
  %56 = call i64 @pci_write_config_byte(i32 %53, i32 %54, i8 zeroext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %20
  %59 = load i32, i32* @DBG_ASS, align 4
  %60 = call i32 @dbg(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %20
  br label %85

62:                                               ; preds = %1
  %63 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %64 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CNTRL_9052, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @inl(i64 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, 1073741824
  %71 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %72 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CNTRL_9052, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outl(i32 %70, i64 %75)
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, -1073741825
  %79 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %80 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CNTRL_9052, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outl(i32 %78, i64 %83)
  br label %85

85:                                               ; preds = %62, %61
  ret void
}

declare dso_local i64 @pci_read_config_byte(i32, i32, i8*) #1

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @pci_write_config_byte(i32, i32, i8 zeroext) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
