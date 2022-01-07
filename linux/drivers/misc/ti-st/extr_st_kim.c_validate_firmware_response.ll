; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_validate_firmware_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_validate_firmware_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kim_data_s = type { i32, i64, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32*, i32 }

@ST_W4_PACKET_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no proper response during fw download\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"data6 %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kim_data_s*)* @validate_firmware_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_firmware_response(%struct.kim_data_s* %0) #0 {
  %2 = alloca %struct.kim_data_s*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.kim_data_s* %0, %struct.kim_data_s** %2, align 8
  %4 = load %struct.kim_data_s*, %struct.kim_data_s** %2, align 8
  %5 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %4, i32 0, i32 2
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %87

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %60

17:                                               ; preds = %10
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %60

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %60

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %31
  %39 = load %struct.kim_data_s*, %struct.kim_data_s** %2, align 8
  %40 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.kim_data_s*, %struct.kim_data_s** %2, align 8
  %43 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %42, i32 0, i32 2
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.kim_data_s*, %struct.kim_data_s** %2, align 8
  %48 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %47, i32 0, i32 2
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memcpy(i32 %41, i32* %46, i32 %51)
  %53 = load i32, i32* @ST_W4_PACKET_TYPE, align 4
  %54 = load %struct.kim_data_s*, %struct.kim_data_s** %2, align 8
  %55 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.kim_data_s*, %struct.kim_data_s** %2, align 8
  %57 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %56, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %57, align 8
  %58 = load %struct.kim_data_s*, %struct.kim_data_s** %2, align 8
  %59 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %81

60:                                               ; preds = %31, %24, %17, %10
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  br label %87

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %38
  %82 = load %struct.kim_data_s*, %struct.kim_data_s** %2, align 8
  %83 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %82, i32 0, i32 0
  %84 = call i32 @complete_all(i32* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %81, %70, %9
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
