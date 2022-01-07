; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_init_devcmd2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_init_devcmd2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32*, i32 (%struct.vnic_dev*, i32, i32)*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_15__, %struct.TYPE_13__*, i32, i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVCMD2_RING_SIZE = common dso_local global i8* null, align 8
@DEVCMD2_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Fatal error in devcmd2 init - hardware surprise removal\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VNIC_PADDR_TARGET = common dso_local global i32 0, align 4
@CMD_INITIALIZE_DEVCMD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*)* @vnic_dev_init_devcmd2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnic_dev_init_devcmd2(%struct.vnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %3, align 8
  %6 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %6, i32 0, i32 2
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %9 = icmp ne %struct.TYPE_16__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %176

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_16__* @kzalloc(i32 64, i32 %12)
  %14 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %15 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %14, i32 0, i32 2
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %15, align 8
  %16 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %176

23:                                               ; preds = %11
  %24 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %25 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i8*, i8** @DEVCMD2_RING_SIZE, align 8
  %29 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 7
  store i8* %28, i8** %32, align 8
  %33 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %34 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %35 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %34, i32 0, i32 2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load i8*, i8** @DEVCMD2_RING_SIZE, align 8
  %39 = load i32, i32* @DEVCMD2_DESC_SIZE, align 4
  %40 = call i32 @enic_wq_devcmd2_alloc(%struct.vnic_dev* %33, %struct.TYPE_14__* %37, i8* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  br label %168

44:                                               ; preds = %23
  %45 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %46 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = call i32 @ioread32(i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %57 = call i32 @vdev_err(%struct.vnic_dev* %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %162

60:                                               ; preds = %44
  %61 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %62 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %61, i32 0, i32 2
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @enic_wq_init_start(%struct.TYPE_14__* %64, i32 0, i32 %65, i32 %66, i32 0, i32 0)
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %70 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %69, i32 0, i32 2
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %74 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = call i32 @vnic_wq_enable(%struct.TYPE_14__* %76)
  %78 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %79 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %80 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %79, i32 0, i32 2
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  %83 = load i8*, i8** @DEVCMD2_RING_SIZE, align 8
  %84 = load i32, i32* @DEVCMD2_DESC_SIZE, align 4
  %85 = call i32 @vnic_dev_alloc_desc_ring(%struct.vnic_dev* %78, %struct.TYPE_15__* %82, i8* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %60
  br label %156

89:                                               ; preds = %60
  %90 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %91 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %90, i32 0, i32 2
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %97 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %96, i32 0, i32 2
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 6
  store i32 %95, i32* %99, align 4
  %100 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %101 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %100, i32 0, i32 2
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %108 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 5
  store i32 %106, i32* %110, align 8
  %111 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %112 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %111, i32 0, i32 2
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %118 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %117, i32 0, i32 2
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 4
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %120, align 8
  %121 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %122 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %121, i32 0, i32 2
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @VNIC_PADDR_TARGET, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %131 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %129, i32* %133, align 4
  %134 = load i8*, i8** @DEVCMD2_RING_SIZE, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %137 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %141 = load i32, i32* @CMD_INITIALIZE_DEVCMD2, align 4
  %142 = call i32 @_vnic_dev_cmd2(%struct.vnic_dev* %140, i32 %141, i32 1000)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %89
  br label %149

146:                                              ; preds = %89
  %147 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %148 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %147, i32 0, i32 1
  store i32 (%struct.vnic_dev*, i32, i32)* @_vnic_dev_cmd2, i32 (%struct.vnic_dev*, i32, i32)** %148, align 8
  store i32 0, i32* %2, align 4
  br label %176

149:                                              ; preds = %145
  %150 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %151 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %152 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %151, i32 0, i32 2
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  %155 = call i32 @vnic_dev_free_desc_ring(%struct.vnic_dev* %150, %struct.TYPE_15__* %154)
  br label %156

156:                                              ; preds = %149, %88
  %157 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %158 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %157, i32 0, i32 2
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 2
  %161 = call i32 @vnic_wq_disable(%struct.TYPE_14__* %160)
  br label %162

162:                                              ; preds = %156, %55
  %163 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %164 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %163, i32 0, i32 2
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  %167 = call i32 @vnic_wq_free(%struct.TYPE_14__* %166)
  br label %168

168:                                              ; preds = %162, %43
  %169 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %170 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %169, i32 0, i32 2
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = call i32 @kfree(%struct.TYPE_16__* %171)
  %173 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %174 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %173, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %174, align 8
  %175 = load i32, i32* %4, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %168, %146, %20, %10
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.TYPE_16__* @kzalloc(i32, i32) #1

declare dso_local i32 @enic_wq_devcmd2_alloc(%struct.vnic_dev*, %struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @vdev_err(%struct.vnic_dev*, i8*) #1

declare dso_local i32 @enic_wq_init_start(%struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnic_wq_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @vnic_dev_alloc_desc_ring(%struct.vnic_dev*, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @_vnic_dev_cmd2(%struct.vnic_dev*, i32, i32) #1

declare dso_local i32 @vnic_dev_free_desc_ring(%struct.vnic_dev*, %struct.TYPE_15__*) #1

declare dso_local i32 @vnic_wq_disable(%struct.TYPE_14__*) #1

declare dso_local i32 @vnic_wq_free(%struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
