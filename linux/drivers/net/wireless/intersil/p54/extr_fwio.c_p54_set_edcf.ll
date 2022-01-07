; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_set_edcf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_set_edcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.p54_edcf = type { i32, i32, i32, i32, i32, i64, i8*, i8* }

@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_DCFINIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_set_edcf(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_edcf*, align 8
  %6 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %7 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %8 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %9 = load i32, i32* @P54_CONTROL_TYPE_DCFINIT, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %7, i32 %8, i32 48, i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %75

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.p54_edcf* @skb_put(%struct.sk_buff* %22, i32 48)
  store %struct.p54_edcf* %23, %struct.p54_edcf** %5, align 8
  %24 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %25 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %30 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %29, i32 0, i32 0
  store i32 9, i32* %30, align 8
  %31 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %32 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %31, i32 0, i32 1
  store i32 16, i32* %32, align 4
  %33 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %34 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  br label %42

35:                                               ; preds = %21
  %36 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %37 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %36, i32 0, i32 0
  store i32 20, i32* %37, align 8
  %38 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %39 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %38, i32 0, i32 1
  store i32 10, i32* %39, align 4
  %40 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %41 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %40, i32 0, i32 2
  store i32 6, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %44 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 3, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %49 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %55 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = call i8* @cpu_to_le16(i32 0)
  %57 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %58 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %60 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %62 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @memset(i32 %63, i32 0, i32 4)
  %65 = load %struct.p54_edcf*, %struct.p54_edcf** %5, align 8
  %66 = getelementptr inbounds %struct.p54_edcf, %struct.p54_edcf* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %69 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32 %67, i32 %70, i32 4)
  %72 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @p54_tx(%struct.p54_common* %72, %struct.sk_buff* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %42, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.p54_edcf* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
