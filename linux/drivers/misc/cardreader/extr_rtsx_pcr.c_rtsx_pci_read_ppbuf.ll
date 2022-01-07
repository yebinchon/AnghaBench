; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_read_ppbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_read_ppbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@PPBUF_BASE2 = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_pci_read_ppbuf(%struct.rtsx_pcr* %0, i32* %1, i32 %2) #0 {
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

19:                                               ; preds = %53, %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 256
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %26 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %36, %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %32 = load i32, i32* @READ_REG_CMD, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %31, i32 %32, i32 %33, i32 0, i32 0)
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %41 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %40, i32 250)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %92

46:                                               ; preds = %39
  %47 = load i32*, i32** %12, align 8
  %48 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %49 = call i32 @rtsx_pci_get_cmd_data(%struct.rtsx_pcr* %48)
  %50 = call i32 @memcpy(i32* %47, i32 %49, i32 256)
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 256
  store i32* %52, i32** %12, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %19

56:                                               ; preds = %19
  %57 = load i32, i32* %7, align 4
  %58 = srem i32 %57, 256
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %62 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %61)
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %74, %60
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = srem i32 %65, 256
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %70 = load i32, i32* @READ_REG_CMD, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %69, i32 %70, i32 %71, i32 0, i32 0)
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %63

77:                                               ; preds = %63
  %78 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %79 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %78, i32 250)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %92

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i32*, i32** %12, align 8
  %87 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %88 = call i32 @rtsx_pci_get_cmd_data(%struct.rtsx_pcr* %87)
  %89 = load i32, i32* %7, align 4
  %90 = srem i32 %89, 256
  %91 = call i32 @memcpy(i32* %86, i32 %88, i32 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %85, %82, %44
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtsx_pci_get_cmd_data(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
