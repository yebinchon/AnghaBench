; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_write_ppbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_write_ppbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@PPBUF_BASE2 = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_pci_write_ppbuf(%struct.rtsx_pcr* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_pcr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 512
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 512, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i32, i32* @PPBUF_BASE2, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %51, %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 256
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %26 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %40, %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %32 = load i32, i32* @WRITE_REG_CMD, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %31, i32 %32, i32 %33, i32 255, i32 %36)
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %12, align 8
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %27

43:                                               ; preds = %27
  %44 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %45 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %44, i32 250)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %88

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load i32, i32* %7, align 4
  %56 = srem i32 %55, 256
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %60 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %76, %58
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = srem i32 %63, 256
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %68 = load i32, i32* @WRITE_REG_CMD, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %67, i32 %68, i32 %69, i32 255, i32 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %12, align 8
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %61

79:                                               ; preds = %61
  %80 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %81 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %80, i32 250)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %88

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %54
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %84, %48
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
