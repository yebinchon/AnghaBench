; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at25.c_at25_ee_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at25.c_at25_ee_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at25_data = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.spi_transfer = type { i32, i8*, i32* }
%struct.spi_message = type { i32 }

@EE_MAXADDRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AT25_READ = common dso_local global i32 0, align 4
@EE_INSTR_BIT3_IS_ADDR = common dso_local global i32 0, align 4
@AT25_INSTR_BIT3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"read %zu bytes at %d --> %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @at25_ee_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at25_ee_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.at25_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.spi_transfer], align 16
  %17 = alloca %struct.spi_message, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.at25_data*
  store %struct.at25_data* %21, %struct.at25_data** %10, align 8
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i32, i32* @EE_MAXADDRLEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %30 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp uge i32 %28, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %155

40:                                               ; preds = %4
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %46 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = zext i32 %48 to i64
  %50 = icmp ugt i64 %44, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %53 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 %55, %56
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %51, %40
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %155

69:                                               ; preds = %59
  store i32* %27, i32** %14, align 8
  %70 = load i32, i32* @AT25_READ, align 4
  store i32 %70, i32* %18, align 4
  %71 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %72 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EE_INSTR_BIT3_IS_ADDR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %81 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 8
  %84 = shl i32 1, %83
  %85 = icmp uge i32 %79, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @AT25_INSTR_BIT3, align 4
  %88 = load i32, i32* %18, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %86, %78
  br label %91

91:                                               ; preds = %90, %69
  %92 = load i32, i32* %18, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  %95 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %96 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %98 [
    i32 2, label %103
    i32 1, label %108
    i32 0, label %108
  ]

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = lshr i32 %99, 16
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %14, align 8
  store i32 %100, i32* %101, align 4
  br label %103

103:                                              ; preds = %91, %98
  %104 = load i32, i32* %7, align 4
  %105 = lshr i32 %104, 8
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %14, align 8
  store i32 %105, i32* %106, align 4
  br label %108

108:                                              ; preds = %91, %91, %103
  %109 = load i32, i32* %7, align 4
  %110 = lshr i32 %109, 0
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %14, align 8
  store i32 %110, i32* %111, align 4
  br label %113

113:                                              ; preds = %108
  %114 = call i32 @spi_message_init(%struct.spi_message* %17)
  %115 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 0
  %116 = call i32 @memset(%struct.spi_transfer* %115, i32 0, i32 48)
  %117 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 0
  %118 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %117, i32 0, i32 2
  store i32* %27, i32** %118, align 16
  %119 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %120 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  %123 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 0
  %124 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 16
  %125 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 0
  %126 = call i32 @spi_message_add_tail(%struct.spi_transfer* %125, %struct.spi_message* %17)
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 1
  %129 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i64, i64* %9, align 8
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 1
  %133 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %16, i64 0, i64 1
  %135 = call i32 @spi_message_add_tail(%struct.spi_transfer* %134, %struct.spi_message* %17)
  %136 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %137 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %136, i32 0, i32 1
  %138 = call i32 @mutex_lock(i32* %137)
  %139 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %140 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = call i32 @spi_sync(%struct.TYPE_4__* %141, %struct.spi_message* %17)
  store i32 %142, i32* %15, align 4
  %143 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %144 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %9, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @dev_dbg(i32* %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %147, i32 %148, i32 %149)
  %151 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %152 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %151, i32 0, i32 1
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %155

155:                                              ; preds = %113, %66, %37
  %156 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @spi_sync(%struct.TYPE_4__*, %struct.spi_message*) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
