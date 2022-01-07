; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_error_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_error_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { %struct.solo_p2m_dev* }
%struct.solo_p2m_dev = type { i32, i32 }

@SOLO_PCI_ERR = common dso_local global i32 0, align 4
@SOLO_PCI_ERR_P2M = common dso_local global i32 0, align 4
@SOLO_PCI_ERR_P2M_DESC = common dso_local global i32 0, align 4
@SOLO_NR_P2M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solo_p2m_error_isr(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.solo_p2m_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %6 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %7 = load i32, i32* @SOLO_PCI_ERR, align 4
  %8 = call i32 @solo_reg_read(%struct.solo_dev* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SOLO_PCI_ERR_P2M, align 4
  %11 = load i32, i32* @SOLO_PCI_ERR_P2M_DESC, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SOLO_NR_P2M, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %23 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %22, i32 0, i32 0
  %24 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %24, i64 %26
  store %struct.solo_p2m_dev* %27, %struct.solo_p2m_dev** %4, align 8
  %28 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %4, align 8
  %29 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @SOLO_P2M_CONTROL(i32 %31)
  %33 = call i32 @solo_reg_write(%struct.solo_dev* %30, i32 %32, i32 0)
  %34 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %4, align 8
  %35 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %34, i32 0, i32 1
  %36 = call i32 @complete(i32* %35)
  br label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %17

40:                                               ; preds = %15, %17
  ret void
}

declare dso_local i32 @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_P2M_CONTROL(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
