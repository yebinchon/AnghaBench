; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_tlv.c_rocker_tlv_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_tlv.c_rocker_tlv_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32, i32 }
%struct.rocker_tlv = type { i32, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rocker_tlv_put(%struct.rocker_desc_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rocker_tlv*, align 8
  store %struct.rocker_desc_info* %0, %struct.rocker_desc_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %14 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %17 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @rocker_tlv_total_size(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %4
  %32 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %33 = call %struct.rocker_tlv* @rocker_tlv_start(%struct.rocker_desc_info* %32)
  store %struct.rocker_tlv* %33, %struct.rocker_tlv** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %36 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %41 = getelementptr inbounds %struct.rocker_tlv, %struct.rocker_tlv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @rocker_tlv_attr_size(i32 %42)
  %44 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %45 = getelementptr inbounds %struct.rocker_tlv, %struct.rocker_tlv* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %47 = call i32 @rocker_tlv_data(%struct.rocker_tlv* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @memcpy(i32 %47, i8* %48, i32 %49)
  %51 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %52 = bitcast %struct.rocker_tlv* %51 to i8*
  %53 = load %struct.rocker_tlv*, %struct.rocker_tlv** %12, align 8
  %54 = getelementptr inbounds %struct.rocker_tlv, %struct.rocker_tlv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @rocker_tlv_padlen(i32 %58)
  %60 = call i32 @memset(i8* %57, i32 0, i32 %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %31, %28
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @rocker_tlv_total_size(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.rocker_tlv* @rocker_tlv_start(%struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_tlv_attr_size(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @rocker_tlv_data(%struct.rocker_tlv*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rocker_tlv_padlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
