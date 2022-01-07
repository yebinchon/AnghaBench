; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { %struct.solo_p2m_dev* }
%struct.solo_p2m_dev = type { i64, i64, %struct.solo_p2m_desc*, i32 }
%struct.solo_p2m_desc = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solo_p2m_isr(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_p2m_dev*, align 8
  %6 = alloca %struct.solo_p2m_desc*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %8 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %7, i32 0, i32 0
  %9 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %9, i64 %11
  store %struct.solo_p2m_dev* %12, %struct.solo_p2m_dev** %5, align 8
  %13 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %5, align 8
  %14 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %5, align 8
  %17 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ule i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %5, align 8
  %22 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %21, i32 0, i32 3
  %23 = call i32 @complete(i32* %22)
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %5, align 8
  %26 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %5, align 8
  %30 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %29, i32 0, i32 2
  %31 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %30, align 8
  %32 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %5, align 8
  %33 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %31, i64 %34
  store %struct.solo_p2m_desc* %35, %struct.solo_p2m_desc** %6, align 8
  %36 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SOLO_P2M_CONTROL(i32 %37)
  %39 = call i32 @solo_reg_write(%struct.solo_dev* %36, i32 %38, i32 0)
  %40 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @SOLO_P2M_TAR_ADR(i32 %41)
  %43 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %6, align 8
  %44 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @solo_reg_write(%struct.solo_dev* %40, i32 %42, i32 %45)
  %47 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @SOLO_P2M_EXT_ADR(i32 %48)
  %50 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %6, align 8
  %51 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @solo_reg_write(%struct.solo_dev* %47, i32 %49, i32 %52)
  %54 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @SOLO_P2M_EXT_CFG(i32 %55)
  %57 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %6, align 8
  %58 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @solo_reg_write(%struct.solo_dev* %54, i32 %56, i32 %59)
  %61 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @SOLO_P2M_CONTROL(i32 %62)
  %64 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %6, align 8
  %65 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @solo_reg_write(%struct.solo_dev* %61, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_P2M_CONTROL(i32) #1

declare dso_local i32 @SOLO_P2M_TAR_ADR(i32) #1

declare dso_local i32 @SOLO_P2M_EXT_ADR(i32) #1

declare dso_local i32 @SOLO_P2M_EXT_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
