; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_bars_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_bars_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64*, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HL_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot obtain PCI resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"pci_ioremap%s_bar failed for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_wc\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_pci_bars_map(%struct.hl_device* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %16 = load i32, i32* @HL_NAME, align 4
  %17 = call i32 @pci_request_regions(%struct.pci_dev* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %120

26:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %84, %26
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %87

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @pci_ioremap_wc_bar(%struct.pci_dev* %40, i32 %41)
  br label %47

43:                                               ; preds = %30
  %44 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @pci_ioremap_bar(%struct.pci_dev* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i64 [ %42, %39 ], [ %46, %43 ]
  %49 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %50 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %48, i64* %54, align 8
  %55 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %56 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %47
  %64 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %65 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %88

83:                                               ; preds = %47
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %27

87:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %120

88:                                               ; preds = %63
  store i32 2, i32* %10, align 4
  br label %89

89:                                               ; preds = %113, %88
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %93, 2
  store i32 %94, i32* %11, align 4
  %95 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %96 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %92
  %104 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %105 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @iounmap(i64 %110)
  br label %112

112:                                              ; preds = %103, %92
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %10, align 4
  br label %89

116:                                              ; preds = %89
  %117 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %118 = call i32 @pci_release_regions(%struct.pci_dev* %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %116, %87, %20
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @pci_ioremap_wc_bar(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
