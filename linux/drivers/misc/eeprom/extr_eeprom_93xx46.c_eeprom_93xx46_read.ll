; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93xx46_dev = type { i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i32, i32, i8*, i32 }

@OP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"read cmd 0x%x, %d Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"read %zu bytes at %d: err. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @eeprom_93xx46_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_93xx46_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eeprom_93xx46_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca [2 x %struct.spi_transfer], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.eeprom_93xx46_dev*
  store %struct.eeprom_93xx46_dev* %19, %struct.eeprom_93xx46_dev** %10, align 8
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %23 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %194

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %36 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  %39 = icmp ugt i64 %34, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %42 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %43, %44
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %40, %30
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %194

57:                                               ; preds = %47
  %58 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %59 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %58, i32 0, i32 2
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %62 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %64, align 8
  %66 = icmp ne i32 (%struct.eeprom_93xx46_dev*)* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %69 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %71, align 8
  %73 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %74 = call i32 %72(%struct.eeprom_93xx46_dev* %73)
  br label %75

75:                                               ; preds = %67, %57
  br label %76

76:                                               ; preds = %162, %75
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %174

79:                                               ; preds = %76
  %80 = bitcast [2 x %struct.spi_transfer]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %80, i8 0, i64 64, i1 false)
  %81 = load i32, i32* @OP_READ, align 4
  %82 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %83 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %81, %84
  store i32 %85, i32* %15, align 4
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %16, align 8
  %87 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %88 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 7
  br i1 %90, label %91, label %101

91:                                               ; preds = %79
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 127
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %15, align 4
  store i32 10, i32* %17, align 4
  %96 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %97 = call i64 @has_quirk_single_word_read(%struct.eeprom_93xx46_dev* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i64 1, i64* %16, align 8
  br label %100

100:                                              ; preds = %99, %91
  br label %112

101:                                              ; preds = %79
  %102 = load i32, i32* %7, align 4
  %103 = lshr i32 %102, 1
  %104 = and i32 %103, 63
  %105 = load i32, i32* %15, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %15, align 4
  store i32 9, i32* %17, align 4
  %107 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %108 = call i64 @has_quirk_single_word_read(%struct.eeprom_93xx46_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i64 2, i64* %16, align 8
  br label %111

111:                                              ; preds = %110, %101
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %114 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %113, i32 0, i32 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %119 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %118, i32 0, i32 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_dbg(i32* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %122)
  %124 = call i32 @spi_message_init(%struct.spi_message* %13)
  %125 = bitcast i32* %15 to i8*
  %126 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %127 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 16
  %128 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %129 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %128, i32 0, i32 1
  store i32 2, i32* %129, align 8
  %130 = load i32, i32* %17, align 4
  %131 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %132 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %134 = call i32 @spi_message_add_tail(%struct.spi_transfer* %133, %struct.spi_message* %13)
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %137 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 16
  %138 = load i64, i64* %9, align 8
  %139 = trunc i64 %138 to i32
  %140 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %141 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %143 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %142, i32 0, i32 2
  store i32 8, i32* %143, align 4
  %144 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %145 = call i32 @spi_message_add_tail(%struct.spi_transfer* %144, %struct.spi_message* %13)
  %146 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %147 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %146, i32 0, i32 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = call i32 @spi_sync(%struct.TYPE_4__* %148, %struct.spi_message* %13)
  store i32 %149, i32* %12, align 4
  %150 = call i32 @ndelay(i32 250)
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %112
  %154 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %155 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %154, i32 0, i32 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %16, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %158, i32 %159, i32 %160)
  br label %174

162:                                              ; preds = %112
  %163 = load i64, i64* %16, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8* %165, i8** %11, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i32, i32* %7, align 4
  %168 = zext i32 %167 to i64
  %169 = add i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %7, align 4
  %171 = load i64, i64* %16, align 8
  %172 = load i64, i64* %9, align 8
  %173 = sub i64 %172, %171
  store i64 %173, i64* %9, align 8
  br label %76

174:                                              ; preds = %153, %76
  %175 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %176 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %175, i32 0, i32 3
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %178, align 8
  %180 = icmp ne i32 (%struct.eeprom_93xx46_dev*)* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %183 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %182, i32 0, i32 3
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %185, align 8
  %187 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %188 = call i32 %186(%struct.eeprom_93xx46_dev* %187)
  br label %189

189:                                              ; preds = %181, %174
  %190 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %10, align 8
  %191 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %190, i32 0, i32 2
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %189, %54, %29
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @has_quirk_single_word_read(%struct.eeprom_93xx46_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_4__*, %struct.spi_message*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
