; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_config_data_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_config_data_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i64, %struct.TYPE_2__*, %struct.queue_set* }
%struct.TYPE_2__ = type { %struct.queue_set* }
%struct.queue_set = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_config_data_transfer(%struct.nicvf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.queue_set*, align 8
  %8 = alloca %struct.queue_set*, align 8
  %9 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 2
  %12 = load %struct.queue_set*, %struct.queue_set** %11, align 8
  store %struct.queue_set* %12, %struct.queue_set** %7, align 8
  %13 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %14 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.queue_set*, %struct.queue_set** %16, align 8
  store %struct.queue_set* %17, %struct.queue_set** %8, align 8
  %18 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %19 = icmp ne %struct.queue_set* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %185

21:                                               ; preds = %2
  %22 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %23 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.queue_set*, %struct.queue_set** %8, align 8
  %28 = icmp ne %struct.queue_set* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.queue_set*, %struct.queue_set** %8, align 8
  %31 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %34 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.queue_set*, %struct.queue_set** %8, align 8
  %36 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %39 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %26, %21
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %115

43:                                               ; preds = %40
  %44 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %45 = call i64 @nicvf_alloc_resources(%struct.nicvf* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %185

50:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %63, %50
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %54 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %59 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @nicvf_snd_queue_config(%struct.nicvf* %58, %struct.queue_set* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %51

66:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %70 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %75 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @nicvf_cmp_queue_config(%struct.nicvf* %74, %struct.queue_set* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %67

82:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %95, %82
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %86 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %91 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @nicvf_rbdr_config(%struct.nicvf* %90, %struct.queue_set* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %83

98:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %111, %98
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %102 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %107 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @nicvf_rcv_queue_config(%struct.nicvf* %106, %struct.queue_set* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %99

114:                                              ; preds = %99
  br label %182

115:                                              ; preds = %40
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %128, %115
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %119 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %124 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @nicvf_rcv_queue_config(%struct.nicvf* %123, %struct.queue_set* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %116

131:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %144, %131
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %135 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %140 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @nicvf_rbdr_config(%struct.nicvf* %139, %struct.queue_set* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %132

147:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %160, %147
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %151 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %156 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @nicvf_snd_queue_config(%struct.nicvf* %155, %struct.queue_set* %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %148

163:                                              ; preds = %148
  store i32 0, i32* %9, align 4
  br label %164

164:                                              ; preds = %176, %163
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %167 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %164
  %171 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %172 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @nicvf_cmp_queue_config(%struct.nicvf* %171, %struct.queue_set* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %170
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %164

179:                                              ; preds = %164
  %180 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %181 = call i32 @nicvf_free_resources(%struct.nicvf* %180)
  br label %182

182:                                              ; preds = %179, %114
  %183 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %184 = call i32 @nicvf_reset_rcv_queue_stats(%struct.nicvf* %183)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %182, %47, %20
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i64 @nicvf_alloc_resources(%struct.nicvf*) #1

declare dso_local i32 @nicvf_snd_queue_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_cmp_queue_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_rbdr_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_rcv_queue_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_free_resources(%struct.nicvf*) #1

declare dso_local i32 @nicvf_reset_rcv_queue_stats(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
