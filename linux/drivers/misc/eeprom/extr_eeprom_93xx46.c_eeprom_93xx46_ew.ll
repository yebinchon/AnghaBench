; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_ew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_ew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93xx46_dev = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)* }
%struct.TYPE_4__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32 }

@OP_START = common dso_local global i32 0, align 4
@ADDR_EWEN = common dso_local global i32 0, align 4
@ADDR_EWDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ew%s cmd 0x%04x, %d bits\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"erase/write %sable error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeprom_93xx46_dev*, i32)* @eeprom_93xx46_ew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_93xx46_ew(%struct.eeprom_93xx46_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.eeprom_93xx46_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.eeprom_93xx46_dev* %0, %struct.eeprom_93xx46_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @OP_START, align 4
  %11 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %12 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %10, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %16 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ADDR_EWEN, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ADDR_EWDS, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = shl i32 %27, 1
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  store i32 10, i32* %7, align 4
  br label %42

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @ADDR_EWEN, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ADDR_EWDS, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  store i32 9, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %26
  %43 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %44 = call i64 @has_quirk_instruction_length(%struct.eeprom_93xx46_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 2
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %53 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %60, i32 %61)
  %63 = call i32 @spi_message_init(%struct.spi_message* %5)
  %64 = call i32 @memset(%struct.spi_transfer* %6, i32 0, i32 16)
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 0
  store i32* %9, i32** %65, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 1
  store i32 2, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = call i32 @spi_message_add_tail(%struct.spi_transfer* %6, %struct.spi_message* %5)
  %70 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %71 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %70, i32 0, i32 1
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %74 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %76, align 8
  %78 = icmp ne i32 (%struct.eeprom_93xx46_dev*)* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %51
  %80 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %81 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %83, align 8
  %85 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %86 = call i32 %84(%struct.eeprom_93xx46_dev* %85)
  br label %87

87:                                               ; preds = %79, %51
  %88 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %89 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @spi_sync(%struct.TYPE_4__* %90, %struct.spi_message* %5)
  store i32 %91, i32* %8, align 4
  %92 = call i32 @ndelay(i32 250)
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %97 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %87
  %107 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %108 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %110, align 8
  %112 = icmp ne i32 (%struct.eeprom_93xx46_dev*)* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %115 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32 (%struct.eeprom_93xx46_dev*)*, i32 (%struct.eeprom_93xx46_dev*)** %117, align 8
  %119 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %120 = call i32 %118(%struct.eeprom_93xx46_dev* %119)
  br label %121

121:                                              ; preds = %113, %106
  %122 = load %struct.eeprom_93xx46_dev*, %struct.eeprom_93xx46_dev** %3, align 8
  %123 = getelementptr inbounds %struct.eeprom_93xx46_dev, %struct.eeprom_93xx46_dev* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local i64 @has_quirk_instruction_length(%struct.eeprom_93xx46_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_4__*, %struct.spi_message*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
