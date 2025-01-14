; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_mxl_fw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_mxl_fw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_link = type { i32, %struct.ddb* }
%struct.ddb = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Read mxl_fw from link %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @mxl_fw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl_fw_read(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ddb_link*, align 8
  %8 = alloca %struct.ddb*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ddb_link*
  store %struct.ddb_link* %10, %struct.ddb_link** %7, align 8
  %11 = load %struct.ddb_link*, %struct.ddb_link** %7, align 8
  %12 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %11, i32 0, i32 1
  %13 = load %struct.ddb*, %struct.ddb** %12, align 8
  store %struct.ddb* %13, %struct.ddb** %8, align 8
  %14 = load %struct.ddb*, %struct.ddb** %8, align 8
  %15 = getelementptr inbounds %struct.ddb, %struct.ddb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ddb_link*, %struct.ddb_link** %7, align 8
  %18 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ddb*, %struct.ddb** %8, align 8
  %22 = load %struct.ddb_link*, %struct.ddb_link** %7, align 8
  %23 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ddbridge_flashread(%struct.ddb* %21, i32 %24, i32* %25, i32 786432, i32 %26)
  ret i32 %27
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @ddbridge_flashread(%struct.ddb*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
