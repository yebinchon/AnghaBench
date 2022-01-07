; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_set_groupfilter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_set_groupfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, i32 }
%struct.p54_group_address_table = type { i32, i8*, i8* }
%struct.sk_buff = type { i32 }

@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_GROUP_ADDRESS_TABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@MC_FILTER_ADDRESS_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_set_groupfilter(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.p54_group_address_table*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %8 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %9 = load i32, i32* @P54_CONTROL_TYPE_GROUP_ADDRESS_TABLE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %7, i32 %8, i32 24, i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.p54_group_address_table* @skb_put(%struct.sk_buff* %18, i32 24)
  store %struct.p54_group_address_table* %19, %struct.p54_group_address_table** %4, align 8
  %20 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %21 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FIF_ALLMULTI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %17
  %27 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %28 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %33 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MC_FILTER_ADDRESS_NUM, align 4
  %36 = icmp sle i32 %34, %35
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi i1 [ false, %26 ], [ %36, %31 ]
  br label %39

39:                                               ; preds = %37, %17
  %40 = phi i1 [ false, %17 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = call i8* @cpu_to_le16(i32 1)
  %46 = load %struct.p54_group_address_table*, %struct.p54_group_address_table** %4, align 8
  %47 = getelementptr inbounds %struct.p54_group_address_table, %struct.p54_group_address_table* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %49 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.p54_group_address_table*, %struct.p54_group_address_table** %4, align 8
  %53 = getelementptr inbounds %struct.p54_group_address_table, %struct.p54_group_address_table* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.p54_group_address_table*, %struct.p54_group_address_table** %4, align 8
  %55 = getelementptr inbounds %struct.p54_group_address_table, %struct.p54_group_address_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %58 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i32 %56, i32 %59, i32 4)
  br label %72

61:                                               ; preds = %39
  %62 = call i8* @cpu_to_le16(i32 0)
  %63 = load %struct.p54_group_address_table*, %struct.p54_group_address_table** %4, align 8
  %64 = getelementptr inbounds %struct.p54_group_address_table, %struct.p54_group_address_table* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = call i8* @cpu_to_le16(i32 0)
  %66 = load %struct.p54_group_address_table*, %struct.p54_group_address_table** %4, align 8
  %67 = getelementptr inbounds %struct.p54_group_address_table, %struct.p54_group_address_table* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.p54_group_address_table*, %struct.p54_group_address_table** %4, align 8
  %69 = getelementptr inbounds %struct.p54_group_address_table, %struct.p54_group_address_table* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memset(i32 %70, i32 0, i32 4)
  br label %72

72:                                               ; preds = %61, %44
  %73 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @p54_tx(%struct.p54_common* %73, %struct.sk_buff* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local %struct.p54_group_address_table* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
