; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93xx46_dev = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)* }
%struct.TYPE_3__ = type { i32 }

@EFBIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"write failed at %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @eeprom_93xx46_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_93xx46_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eeprom_93xx46_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.eeprom_93xx46_dev*
  store %struct.eeprom_93xx46_dev* %16, %struct.eeprom_93xx46_dev** %10, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %11, align 8
  store i32 1, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %20 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EFBIG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %144

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %31, %32
  %34 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %35 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = zext i32 %36 to i64
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %41 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub i32 %42, %43
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %39, %29
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %144

56:                                               ; preds = %46
  %57 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %58 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 6
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  store i32 2, i32* %14, align 4
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %62, -2
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %66 = call i32 @eeprom_93xx46_ew(%struct.eeprom_93xx46_dev* %65, i32 1)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %144

71:                                               ; preds = %64
  %72 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %73 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %72, i32 0, i32 2
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %76 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %78, align 8
  %80 = icmp ne i32 (%struct.eeprom_93xx46_dev*)* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %83 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %85, align 8
  %87 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %88 = call i32 %86(%struct.eeprom_93xx46_dev* %87)
  br label %89

89:                                               ; preds = %81, %71
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %118, %89
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %9, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %90
  %96 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add i32 %101, %102
  %104 = call i32 @eeprom_93xx46_write_word(%struct.eeprom_93xx46_dev* %96, i8* %100, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %95
  %108 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %109 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %108, i32 0, i32 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115)
  br label %122

117:                                              ; preds = %95
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %90

122:                                              ; preds = %107, %90
  %123 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %124 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %123, i32 0, i32 3
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %126, align 8
  %128 = icmp ne i32 (%struct.eeprom_93xx46_dev*)* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %131 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %130, i32 0, i32 3
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %133, align 8
  %135 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %136 = call i32 %134(%struct.eeprom_93xx46_dev* %135)
  br label %137

137:                                              ; preds = %129, %122
  %138 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %139 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %138, i32 0, i32 2
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %142 = call i32 @eeprom_93xx46_ew(%struct.eeprom_93xx46_dev* %141, i32 0)
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %137, %69, %53, %26
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eeprom_93xx46_ew(%struct.eeprom_93xx46_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @eeprom_93xx46_write_word(%struct.eeprom_93xx46_dev*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
