; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_ibmasmfs.c_event_file_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_ibmasmfs.c_event_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.service_processor* }
%struct.service_processor = type { i32 }
%struct.file = type { %struct.ibmasmfs_event_data* }
%struct.ibmasmfs_event_data = type { i64, %struct.service_processor*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @event_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ibmasmfs_event_data*, align 8
  %7 = alloca %struct.service_processor*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.service_processor*, %struct.service_processor** %9, align 8
  %11 = icmp ne %struct.service_processor* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.service_processor*, %struct.service_processor** %17, align 8
  store %struct.service_processor* %18, %struct.service_processor** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ibmasmfs_event_data* @kmalloc(i32 24, i32 %19)
  store %struct.ibmasmfs_event_data* %20, %struct.ibmasmfs_event_data** %6, align 8
  %21 = load %struct.ibmasmfs_event_data*, %struct.ibmasmfs_event_data** %6, align 8
  %22 = icmp ne %struct.ibmasmfs_event_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %15
  %27 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %28 = load %struct.ibmasmfs_event_data*, %struct.ibmasmfs_event_data** %6, align 8
  %29 = getelementptr inbounds %struct.ibmasmfs_event_data, %struct.ibmasmfs_event_data* %28, i32 0, i32 2
  %30 = call i32 @ibmasm_event_reader_register(%struct.service_processor* %27, i32* %29)
  %31 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %32 = load %struct.ibmasmfs_event_data*, %struct.ibmasmfs_event_data** %6, align 8
  %33 = getelementptr inbounds %struct.ibmasmfs_event_data, %struct.ibmasmfs_event_data* %32, i32 0, i32 1
  store %struct.service_processor* %31, %struct.service_processor** %33, align 8
  %34 = load %struct.ibmasmfs_event_data*, %struct.ibmasmfs_event_data** %6, align 8
  %35 = getelementptr inbounds %struct.ibmasmfs_event_data, %struct.ibmasmfs_event_data* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.ibmasmfs_event_data*, %struct.ibmasmfs_event_data** %6, align 8
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store %struct.ibmasmfs_event_data* %36, %struct.ibmasmfs_event_data** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %26, %23, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.ibmasmfs_event_data* @kmalloc(i32, i32) #1

declare dso_local i32 @ibmasm_event_reader_register(%struct.service_processor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
