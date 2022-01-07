; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_mbox_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otx2_mbox = type { i32, i32, i8*, %struct.otx2_mbox_dev*, %struct.pci_dev*, i8*, i32, i8*, i8*, i8*, i8* }
%struct.otx2_mbox_dev = type { i32, i8* }
%struct.pci_dev = type { i32 }

@MBOX_DOWN_TX_START = common dso_local global i8* null, align 8
@MBOX_DOWN_RX_START = common dso_local global i8* null, align 8
@MBOX_DOWN_TX_SIZE = common dso_local global i8* null, align 8
@MBOX_DOWN_RX_SIZE = common dso_local global i8* null, align 8
@MBOX_UP_TX_START = common dso_local global i8* null, align 8
@MBOX_UP_RX_START = common dso_local global i8* null, align 8
@MBOX_UP_TX_SIZE = common dso_local global i8* null, align 8
@MBOX_UP_RX_SIZE = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@RVU_AF_AFPF_MBOX0 = common dso_local global i32 0, align 4
@RVU_PF_PFAF_MBOX1 = common dso_local global i32 0, align 4
@RVU_PF_VFX_PFVF_MBOX0 = common dso_local global i32 0, align 4
@RVU_VF_VFPF_MBOX1 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MBOX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otx2_mbox_init(%struct.otx2_mbox* %0, i8* %1, %struct.pci_dev* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.otx2_mbox*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.otx2_mbox_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.otx2_mbox* %0, %struct.otx2_mbox** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %12, align 4
  switch i32 %16, label %69 [
    i32 135, label %17
    i32 131, label %17
    i32 133, label %30
    i32 129, label %30
    i32 134, label %43
    i32 130, label %43
    i32 132, label %56
    i32 128, label %56
  ]

17:                                               ; preds = %6, %6
  %18 = load i8*, i8** @MBOX_DOWN_TX_START, align 8
  %19 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %20 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %19, i32 0, i32 10
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @MBOX_DOWN_RX_START, align 8
  %22 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %23 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @MBOX_DOWN_TX_SIZE, align 8
  %25 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %26 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @MBOX_DOWN_RX_SIZE, align 8
  %28 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %29 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  br label %72

30:                                               ; preds = %6, %6
  %31 = load i8*, i8** @MBOX_DOWN_RX_START, align 8
  %32 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %33 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @MBOX_DOWN_TX_START, align 8
  %35 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %36 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @MBOX_DOWN_RX_SIZE, align 8
  %38 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %39 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @MBOX_DOWN_TX_SIZE, align 8
  %41 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %42 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  br label %72

43:                                               ; preds = %6, %6
  %44 = load i8*, i8** @MBOX_UP_TX_START, align 8
  %45 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %46 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @MBOX_UP_RX_START, align 8
  %48 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %49 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %48, i32 0, i32 9
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @MBOX_UP_TX_SIZE, align 8
  %51 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %52 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @MBOX_UP_RX_SIZE, align 8
  %54 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %55 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  br label %72

56:                                               ; preds = %6, %6
  %57 = load i8*, i8** @MBOX_UP_RX_START, align 8
  %58 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %59 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %58, i32 0, i32 10
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @MBOX_UP_TX_START, align 8
  %61 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %62 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %61, i32 0, i32 9
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @MBOX_UP_RX_SIZE, align 8
  %64 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %65 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @MBOX_UP_TX_SIZE, align 8
  %67 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %68 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  br label %72

69:                                               ; preds = %6
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %160

72:                                               ; preds = %56, %43, %30, %17
  %73 = load i32, i32* %12, align 4
  switch i32 %73, label %98 [
    i32 135, label %74
    i32 134, label %74
    i32 133, label %80
    i32 132, label %80
    i32 131, label %86
    i32 130, label %86
    i32 129, label %92
    i32 128, label %92
  ]

74:                                               ; preds = %72, %72
  %75 = load i32, i32* @RVU_AF_AFPF_MBOX0, align 4
  %76 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %77 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %79 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %78, i32 0, i32 0
  store i32 4, i32* %79, align 8
  br label %101

80:                                               ; preds = %72, %72
  %81 = load i32, i32* @RVU_PF_PFAF_MBOX1, align 4
  %82 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %83 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %85 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %101

86:                                               ; preds = %72, %72
  %87 = load i32, i32* @RVU_PF_VFX_PFVF_MBOX0, align 4
  %88 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %89 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %91 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %90, i32 0, i32 0
  store i32 12, i32* %91, align 8
  br label %101

92:                                               ; preds = %72, %72
  %93 = load i32, i32* @RVU_VF_VFPF_MBOX1, align 4
  %94 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %95 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %97 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %101

98:                                               ; preds = %72
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %160

101:                                              ; preds = %92, %86, %80, %74
  %102 = load i8*, i8** %11, align 8
  %103 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %104 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %107 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %109 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %110 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %109, i32 0, i32 4
  store %struct.pci_dev* %108, %struct.pci_dev** %110, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.otx2_mbox_dev* @kcalloc(i32 %111, i32 16, i32 %112)
  %114 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %115 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %114, i32 0, i32 3
  store %struct.otx2_mbox_dev* %113, %struct.otx2_mbox_dev** %115, align 8
  %116 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %117 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %116, i32 0, i32 3
  %118 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %117, align 8
  %119 = icmp ne %struct.otx2_mbox_dev* %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %101
  %121 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %122 = call i32 @otx2_mbox_destroy(%struct.otx2_mbox* %121)
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %160

125:                                              ; preds = %101
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %128 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %156, %125
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %129
  %134 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %135 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %134, i32 0, i32 3
  %136 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %136, i64 %138
  store %struct.otx2_mbox_dev* %139, %struct.otx2_mbox_dev** %14, align 8
  %140 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %141 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @MBOX_SIZE, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %142, i64 %146
  %148 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %14, align 8
  %149 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %14, align 8
  %151 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %150, i32 0, i32 0
  %152 = call i32 @spin_lock_init(i32* %151)
  %153 = load %struct.otx2_mbox*, %struct.otx2_mbox** %8, align 8
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @otx2_mbox_reset(%struct.otx2_mbox* %153, i32 %154)
  br label %156

156:                                              ; preds = %133
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %129

159:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %160

160:                                              ; preds = %159, %120, %98, %69
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local %struct.otx2_mbox_dev* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @otx2_mbox_destroy(%struct.otx2_mbox*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @otx2_mbox_reset(%struct.otx2_mbox*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
