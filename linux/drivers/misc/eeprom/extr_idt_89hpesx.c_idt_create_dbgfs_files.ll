; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_create_dbgfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_create_dbgfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CSRNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d-%04hx\00", align 1
@csr_dbgdir = common dso_local global i32 0, align 4
@csr_dbgfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_89hpesx_dev*)* @idt_create_dbgfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_create_dbgfs_files(%struct.idt_89hpesx_dev* %0) #0 {
  %2 = alloca %struct.idt_89hpesx_dev*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %2, align 8
  %6 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %2, align 8
  %7 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %6, i32 0, i32 1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load i32, i32* @CSRNAME_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @CSRNAME_LEN, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load i32, i32* @csr_dbgdir, align 4
  %24 = call i32 @debugfs_create_dir(i8* %12, i32 %23)
  %25 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %2, align 8
  %26 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %2, align 8
  %31 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %2, align 8
  %34 = call i32 @debugfs_create_file(i32 %29, i32 384, i32 %32, %struct.idt_89hpesx_dev* %33, i32* @csr_dbgfs_ops)
  %35 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %35)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @debugfs_create_dir(i8*, i32) #2

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.idt_89hpesx_dev*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
