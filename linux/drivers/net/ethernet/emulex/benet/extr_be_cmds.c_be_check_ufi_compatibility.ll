; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_check_ufi_compatibility.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_check_ufi_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.flash_file_hdr_g3 = type { i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid FW UFI file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.flash_file_hdr_g3*)* @be_check_ufi_compatibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_check_ufi_compatibility(%struct.be_adapter* %0, %struct.flash_file_hdr_g3* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.flash_file_hdr_g3*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.flash_file_hdr_g3* %1, %struct.flash_file_hdr_g3** %5, align 8
  %6 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %7 = icmp ne %struct.flash_file_hdr_g3* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %16 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 128, label %20
    i32 129, label %26
    i32 130, label %32
  ]

20:                                               ; preds = %14
  %21 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %22 = call i32 @skyhawk_chip(%struct.be_adapter* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %63

25:                                               ; preds = %20
  br label %39

26:                                               ; preds = %14
  %27 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %28 = call i32 @BE3_chip(%struct.be_adapter* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %63

31:                                               ; preds = %26
  br label %39

32:                                               ; preds = %14
  %33 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %34 = call i32 @BE2_chip(%struct.be_adapter* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %63

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %63

39:                                               ; preds = %37, %31, %25
  %40 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %41 = call i64 @BEx_chip(%struct.be_adapter* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %45 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 16
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %63

54:                                               ; preds = %43, %39
  %55 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %56 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %57, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %48, %38, %36, %30, %24, %8
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @skyhawk_chip(%struct.be_adapter*) #1

declare dso_local i32 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i32 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
