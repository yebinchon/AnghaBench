; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_p2m_desc = type { i32, i32, i32, i32 }

@SOLO_P2M_BURST_256 = common dso_local global i32 0, align 4
@SOLO_P2M_WRITE = common dso_local global i32 0, align 4
@SOLO_P2M_TRANS_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solo_p2m_fill_desc(%struct.solo_p2m_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.solo_p2m_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.solo_p2m_desc* %0, %struct.solo_p2m_desc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %10, align 4
  %16 = and i32 %15, 3
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = ashr i32 %23, 2
  %25 = call i32 @SOLO_P2M_COPY_SIZE(i32 %24)
  %26 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %8, align 8
  %27 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SOLO_P2M_BURST_256, align 4
  %29 = call i32 @SOLO_P2M_BURST_SIZE(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* @SOLO_P2M_WRITE, align 4
  br label %35

34:                                               ; preds = %7
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = or i32 %29, %36
  %38 = load i32, i32* @SOLO_P2M_TRANS_ON, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %8, align 8
  %41 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %35
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %45, 2
  %47 = call i32 @SOLO_P2M_EXT_INC(i32 %46)
  %48 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %8, align 8
  %49 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, 2
  %54 = call i32 @SOLO_P2M_PCI_INC(i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @SOLO_P2M_REPEAT(i32 %55)
  %57 = or i32 %54, %56
  %58 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %8, align 8
  %59 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %44, %35
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %8, align 8
  %65 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.solo_p2m_desc*, %struct.solo_p2m_desc** %8, align 8
  %68 = getelementptr inbounds %struct.solo_p2m_desc, %struct.solo_p2m_desc* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @SOLO_P2M_COPY_SIZE(i32) #1

declare dso_local i32 @SOLO_P2M_BURST_SIZE(i32) #1

declare dso_local i32 @SOLO_P2M_EXT_INC(i32) #1

declare dso_local i32 @SOLO_P2M_PCI_INC(i32) #1

declare dso_local i32 @SOLO_P2M_REPEAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
