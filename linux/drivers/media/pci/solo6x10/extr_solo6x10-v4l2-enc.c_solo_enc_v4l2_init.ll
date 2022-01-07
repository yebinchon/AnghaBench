; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_v4l2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_v4l2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32, i64, i32, i32, %struct.TYPE_9__**, %struct.TYPE_10__*, i32*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SOLO_DEV_6010 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Encoders as /dev/video%d-%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_enc_v4l2_init(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %9 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %8, i32 0, i32 9
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %12 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %11, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %14 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %13, i32 0, i32 6
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %17 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %20 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %19, i32 0, i32 8
  %21 = call i32* @pci_alloc_consistent(%struct.TYPE_10__* %15, i32 %18, i32* %20)
  %22 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %23 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %22, i32 0, i32 7
  store i32* %21, i32** %23, align 8
  %24 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %25 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %161

31:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %35 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.TYPE_9__* @solo_enc_alloc(%struct.solo_dev* %39, i32 %40, i32 %41)
  %43 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %44 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %43, i32 0, i32 5
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i64 %47
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %48, align 8
  %49 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %50 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %49, i32 0, i32 5
  %51 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %51, i64 %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i64 @IS_ERR(%struct.TYPE_9__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %63

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %32

63:                                               ; preds = %58, %32
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %66 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %63
  %70 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %71 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %70, i32 0, i32 5
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 %74
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @PTR_ERR(%struct.TYPE_9__* %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %82, %69
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %6, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %84 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %83, i32 0, i32 5
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %85, i64 %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = call i32 @solo_enc_free(%struct.TYPE_9__* %89)
  br label %78

91:                                               ; preds = %78
  %92 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %93 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %92, i32 0, i32 6
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %96 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %99 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %102 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pci_free_consistent(%struct.TYPE_10__* %94, i32 %97, i32* %100, i32 %103)
  %105 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %106 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %105, i32 0, i32 7
  store i32* null, i32** %106, align 8
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %161

108:                                              ; preds = %63
  %109 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %110 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SOLO_DEV_6010, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %116 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, 4
  %119 = mul nsw i32 %118, 4
  %120 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %121 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  br label %130

122:                                              ; preds = %108
  %123 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %124 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %125, 4
  %127 = mul nsw i32 %126, 5
  %128 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %129 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %122, %114
  %131 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %132 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %131, i32 0, i32 6
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %136 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %135, i32 0, i32 5
  %137 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %137, i64 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %145 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %144, i32 0, i32 5
  %146 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %145, align 8
  %147 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %148 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %146, i64 %151
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dev_info(i32* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %157)
  %159 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %160 = call i32 @solo_ring_start(%struct.solo_dev* %159)
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %130, %91, %28
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @pci_alloc_consistent(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @solo_enc_alloc(%struct.solo_dev*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @solo_enc_free(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @solo_ring_start(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
