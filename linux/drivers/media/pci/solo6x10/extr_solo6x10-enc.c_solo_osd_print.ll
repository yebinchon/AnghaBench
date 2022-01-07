; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_osd_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_osd_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_enc_dev = type { i32*, i32*, i32, %struct.solo_dev* }
%struct.solo_dev = type { i32 }
%struct.font_desc = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"VGA8x16\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SOLO_VE_OSD_CH = common dso_local global i32 0, align 4
@SOLO_OSD_WRITE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_osd_print(%struct.solo_enc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_enc_dev*, align 8
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.font_desc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.solo_enc_dev* %0, %struct.solo_enc_dev** %3, align 8
  %12 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %12, i32 0, i32 3
  %14 = load %struct.solo_dev*, %struct.solo_dev** %13, align 8
  store %struct.solo_dev* %14, %struct.solo_dev** %4, align 8
  %15 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %19 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = call %struct.font_desc* @find_font(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.font_desc* %21, %struct.font_desc** %8, align 8
  %22 = load %struct.font_desc*, %struct.font_desc** %8, align 8
  %23 = icmp ne %struct.font_desc* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %115

31:                                               ; preds = %1
  %32 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %33 = load i32, i32* @SOLO_VE_OSD_CH, align 4
  %34 = call i32 @solo_reg_read(%struct.solo_dev* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %110

46:                                               ; preds = %31
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @SOLO_OSD_WRITE_SIZE, align 4
  %49 = call i32 @memset(i32* %47, i32 0, i32 %48)
  %50 = load %struct.font_desc*, %struct.font_desc** %8, align 8
  %51 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %89, %46
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %85, %58
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 16
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bitrev8(i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 %74, 1
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 1
  %78 = or i32 %75, %77
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, -2
  %81 = shl i32 %80, 4
  %82 = or i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %73, i64 %83
  store i32 %72, i32* %84, align 4
  br label %85

85:                                               ; preds = %62
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %59

88:                                               ; preds = %59
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %5, align 8
  br label %54

94:                                               ; preds = %54
  %95 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %98 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %99 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @SOLO_EOSD_EXT_ADDR_CHAN(%struct.solo_dev* %97, i32 %100)
  %102 = load i32, i32* @SOLO_OSD_WRITE_SIZE, align 4
  %103 = call i32 @solo_p2m_dma(%struct.solo_dev* %95, i32 1, i32* %96, i32 %101, i32 %102, i32 0, i32 0)
  %104 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %105 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 1, %106
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %94, %38
  %111 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %112 = load i32, i32* @SOLO_VE_OSD_CH, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @solo_reg_write(%struct.solo_dev* %111, i32 %112, i32 %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %28
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.font_desc* @find_font(i8*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @solo_p2m_dma(%struct.solo_dev*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SOLO_EOSD_EXT_ADDR_CHAN(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
